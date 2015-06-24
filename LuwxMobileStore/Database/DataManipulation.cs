using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using System.Data;
using System.Reflection;

namespace DataLayer
{
    internal enum ManipulateType
    {
        Insert,
        Update,
        Delete
    }

    public class DataManipulation
    {
        
        private Dictionary<string, bool> ExistTables;
        private DataAccess _dataAccess = new DataAccess();

        public DataManipulation()
        {
            ExistTables = new Dictionary<string, bool>();
        }

        private void DataManipulate(ManipulateType mType, object record)
        {
            string TableName = record.GetType().Name;
            Type oType = record.GetType();
            //if (!ExistTables.ContainsKey(TableName))
            //{
            //    SqlParameter[] sprams = new SqlParameter[] { 
            //        new SqlParameter("@TableName",TableName)
            //    };
            //    DataTable dt = _dataAccess.Query("TableIsExist", sprams);
            //    if (int.Parse(dt.Rows[0][0].ToString()) == 1)
            //    {
            //        ExistTables.Add(TableName, true);
            //    }
            //    else
            //    {
            //        ExistTables.Add(TableName, false);
            //        throw new Exception("Không tồn tại bảng " + TableName);
            //    }
            //}
            string SPName = TableName+"_Proc"+mType.ToString();
            List<string> lstParamNames = _dataAccess.GetParameter(SPName);
            List<SqlParameter> lstParam = new List<SqlParameter>();
            lstParamNames.ForEach(x => {
                object val = oType.GetProperty(x.Remove(0,1)).GetValue(record,null);
                if(val==null) val=DBNull.Value;
                lstParam.Add(new SqlParameter(x,val));
            });
            _dataAccess.NonQuery(SPName, lstParam.ToArray());
        }

        public void Insert(object record)
        {
            DataManipulate(ManipulateType.Insert, record);
        }

        public void Update(object record)
        {
            DataManipulate(ManipulateType.Update, record);
        }

        public void Delete(object record)
        {
            DataManipulate(ManipulateType.Delete, record);
        }

        public int GetNextID(string TableName)
        {
            DataTable dt = _dataAccess.Query("SELECT MAX(" + TableName + "ID) FROM " + TableName);
            if (dt.Rows[0][0] != null)
            {
                return int.Parse(dt.Rows[0][0].ToString())+1;
            }
            else
            {
                return 1;
            }
        }
    }
}
