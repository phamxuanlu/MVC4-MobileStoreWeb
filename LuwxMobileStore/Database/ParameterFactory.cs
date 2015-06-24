using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;


namespace DataLayer
{
    public class ParameterFactory
    {
        private static DataAccess _dataAccess = new DataAccess();
        public static SqlParameter[] MakeParameters(string SPName,params object[] values)
        {
            List<string> lstPramName = _dataAccess.GetParameter(SPName);
            List<SqlParameter> lst = new List<SqlParameter>();
            if (lstPramName.Count != values.Length)
                throw new Exception("Giá trị truyền không đúng số lượng Parameter");
            for (int i = 0; i < lstPramName.Count;i++ )
            {
                lst.Add(new SqlParameter(lstPramName[i],values[i]));
            }
            return lst.ToArray();
        }
    }
}
