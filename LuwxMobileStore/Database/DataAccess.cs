using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using System.Data;

namespace DataLayer
{
    public class DataAccess
    {
        private SqlDataAdapter DataAdapter;
        private SqlCommand Command;
       // private SqlConnection conn;
        public DataAccess()
        {
            //conn = new SqlConnection(ApplicationSettings.ConnectionString);
        }

        //public DataTable ExecuteQuery(string query, SqlParameter[] param = null)
        //{
        //    DataTable dt = new DataTable();

        //    if(query.Contains(' '))
        //    {
        //        using(SqlDataAdapter sda = new SqlDataAdapter(query,conn))
        //        {
        //            sda.Fill(dt);
        //            return dt;
        //        }
        //    }
        //    else
        //    {
        //        using(SqlDataAdapter sda = new SqlDataAdapter())
        //        {
        //            SqlCommand scmd = new SqlCommand(query, conn);
        //            if (param.Length == 0)
        //            {
        //                scmd.CommandType = CommandType.StoredProcedure;
        //                if(param!=null)
        //                    scmd.Parameters.AddRange(param);
        //            }
        //            else
        //            {
        //                scmd.CommandType = CommandType.Text;
        //                if (param != null)
        //                    scmd.Parameters.AddRange(param);
        //            }
        //            sda.SelectCommand = scmd;
        //            sda.Fill(dt);
        //            scmd.Dispose();
        //            return dt;
        //        }
        //    }
        //}

        //public object ExecuteScalar(string query, SqlParameter[] param = null)
        //{
        //    return 1;

        //}

        //public void ExecuteNonQuery(string query, SqlParameter[] param=null)
        //{
        //    using (SqlCommand scmd = new SqlCommand(query, conn))
        //    {
        //        if (param != null)
        //            scmd.Parameters.AddRange(param);
        //        if (query.Contains(' '))
        //            scmd.CommandType = CommandType.Text;
        //        else
        //            scmd.CommandType = CommandType.StoredProcedure;
        //        conn.Open();
        //        scmd.ExecuteNonQuery();
        //        conn.Close();
        //    }
        //}

        public DataTable Query(string queryName, SqlParameter[] sparam = null)
        {
            DataTable ret = new DataTable();
            using (SqlConnection conn = new SqlConnection(ApplicationSettings.ConnectionString))
            {
                if (sparam == null)
                {
                    //Câu lệnh truy vấn trực tiếp
                    if (queryName.Contains(' '))
                    {
                        DataAdapter = new SqlDataAdapter(queryName, conn);
                    }
                    //Thủ tục không tham số
                    else
                    {
                        Command = new SqlCommand(queryName, conn);
                        Command.CommandType = CommandType.StoredProcedure;
                        DataAdapter = new SqlDataAdapter(Command);
                    }
                }
                //Thủ tục có tham số
                else
                {
                    Command = new SqlCommand(queryName, conn);
                    Command.CommandType = CommandType.StoredProcedure;
                    foreach (SqlParameter p in sparam)
                    {
                        Command.Parameters.Add(p);
                    }
                    DataAdapter = new SqlDataAdapter(Command);
                }
                DataAdapter.Fill(ret);
            }

            return ret;
        }

        public void NonQuery(string nonQueryName, SqlParameter[] spram = null)
        {
            using (SqlConnection conn = new SqlConnection(ApplicationSettings.ConnectionString))
            {
                try
                {
                    conn.Open();
                    Command = new SqlCommand(nonQueryName, conn);
                    if (spram == null)
                    {
                        if (nonQueryName.Contains(' '))
                        {
                            Command.CommandType = CommandType.Text;
                        }
                        else
                        {
                            Command.CommandType = CommandType.StoredProcedure;
                        }
                    }
                    else
                    {
                        Command.CommandType = CommandType.StoredProcedure;
                        Command.Parameters.Clear();
                        foreach (SqlParameter p in spram)
                        {
                            Command.Parameters.Add(p);
                        }
                    }

                    Command.ExecuteNonQuery();
                }
                catch (Exception ex)
                {
                    throw ex;
                }
            }
        }

        public int NextID(string TableName,string IDName)
        {
            string query = "SELECT MAX("+IDName+") FROM "+TableName;
            DataTable dt = Query(query);
            if (dt.Rows[0][0].ToString() != "")
                return int.Parse(dt.Rows[0][0].ToString())+1;
            else
                return 1;
        }

        public List<string> GetParameter(string StoredProcedure)
        {
            List<string> param = new List<string>();
            using (SqlConnection conn = new SqlConnection(ApplicationSettings.ConnectionString))
            {
                try
                {
                    SqlCommand cmd = new SqlCommand(StoredProcedure, conn);
                    cmd.CommandType = CommandType.StoredProcedure;
                    conn.Open();
                    SqlCommandBuilder.DeriveParameters(cmd);  //Kiem tra cac tham so
                    cmd.Parameters.RemoveAt(0);
                    foreach (SqlParameter sp in cmd.Parameters)
                    {
                        param.Add(sp.ParameterName);
                    }
                }
                catch
                {
                    throw;
                }
            }
            return param;
        }


        internal static DataTable Query(string p, SqlParameter sqlParameter)
        {
            throw new NotImplementedException();
        }
    }
}
