using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using MobileStore.Utilities.Helper;


namespace DataLayer
{
    public class Table<T> where T : new ()
    {
        public List<T> ListObject = new List<T>();
        private string TableName;
        private List<int> Inserted = new List<int>();
        private List<int> Updated = new List<int>();
        private List<T> Deleted = new List<T>();

        private DataAccess _dataAccess = new DataAccess();
        private DataManipulation _DMObject = new DataManipulation();

        public Table()
        { 
            TableName = typeof(T).Name;
            ListObject = EntityHelper<T>.ConvertToList(_dataAccess.Query("SELECT * FROM " + TableName));
        }

        public T this[int ID]
        {
            get
            {
                return ListObject.Find(x => GetIDValue(x) == ID);
            }
            set
            {
                int index = ListObject.FindIndex(x => GetIDValue(x) == ID);
                
                if (index == -1)
                {
                    ListObject.Add(value);
                    Inserted.Add(ID);
                }
                else
                {
                    if (value == null)
                    {
                        Deleted.Add(ListObject[index]);
                        ListObject.RemoveAt(index);
                    }
                    Updated.Add(ID);
                    ListObject[index] = value;
                }
            }
        }

        public void Insert(T record)
        {
            int index = ListObject.FindIndex(x => GetIDValue(x) == GetIDValue(record));
            if (index == -1)
            {
                ListObject.Add(record);
                Inserted.Add(GetIDValue(record));
            }
            else
            {
                throw new Exception("ID is Exits!");
            }
        }

        public void Update(T record)
        {
            int index = ListObject.FindIndex(x => GetIDValue(x) == GetIDValue(record));
            if (index != -1)
            {
                ListObject[index] = record;
                Updated.Add(GetIDValue(record));
            }
            else
            {
                throw new Exception("ID is not Exits!");
            }
        }

        public void Delete(T record)
        {
            int ID = GetIDValue(record);
            int index = ListObject.FindIndex(x => GetIDValue(x) == ID);
            if (index == -1)
                throw new Exception("ID is not exits");
            Deleted.Add(record);
            ListObject.RemoveAt(index);
        }

        public void Save()
        {
            for (int i = 0; i < Inserted.Count; i++)
            {
                _DMObject.Insert(ListObject.Find(x => { return GetIDValue(x) == Inserted[i]; }));
            }
            for (int i = 0; i < Updated.Count; i++)
            {
                _DMObject.Update(ListObject.Find(x => { return GetIDValue(x) == Updated[i]; }));
            }
            for (int i = 0; i < Deleted.Count; i++)
            {
                _DMObject.Delete(Deleted[i]);
            }
        }

        public void Load()
        {
            ListObject = EntityHelper<T>.ConvertToList(_dataAccess.Query("SELECT * FROM " + TableName));
        }

        public void Load(string query,params object[] prms)
        {
            if (prms.Length > 0)
            {
                List<SqlParameter> lstParam = new List<SqlParameter>();
                int i = 0;
                _dataAccess.GetParameter(query).ForEach(x =>
                {
                    lstParam.Add(new SqlParameter(x, prms[i]));
                    i++;
                });
                ListObject = EntityHelper<T>.ConvertToList(_dataAccess.Query(query, lstParam.ToArray()));
            }
            else
            {
                ListObject = EntityHelper<T>.ConvertToList(_dataAccess.Query(query));
            }
        }

        private int GetIDValue(object record)
        {
            object obj = record.GetType().GetProperty(TableName + "ID").GetValue(record, null);
            if(obj!=null)
                return (int)obj;
            return 0;
        }

    }
}
