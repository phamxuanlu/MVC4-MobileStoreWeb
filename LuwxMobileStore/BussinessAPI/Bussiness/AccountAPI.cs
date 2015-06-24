using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using DataLayer;
using MobileStore.Utilities.Helper;
using System.Data;
using MobileStore.Bussiness.Models;

namespace MobileStore.Bussiness
{
    public class AccountAPI
    {
        DataAccess _dataAccess = new DataAccess();
        DataManipulation _dtm = new DataManipulation();

        public bool Login(string Username, string Password)
        {
            try
            {
                Password = CryptoHelper.Hash(Password, HashAlgorithm.SHA512);
                SqlParameter[] sprms = ParameterFactory.MakeParameters("Account_Login", Username, Password);
                DataTable dt = _dataAccess.Query("Account_Login", sprms);
                return int.Parse(dt.Rows[0][0].ToString()) == 1;
            }
            catch
            {
                return false;
            }
        }

        public RegisterState Register(string Username, string Password, string Email)
        {
            try
            {
                Password = CryptoHelper.Hash(Password, HashAlgorithm.SHA512);
                int NextID = _dtm.GetNextID("Account");
                SqlParameter[] sprms = ParameterFactory.MakeParameters("Account_Register", NextID, Username, Password, Email);
                DataTable dt = _dataAccess.Query("Account_Register", sprms);
                int maxID = _dataAccess.NextID("AccountInRoles", "AccountInRolesID");
                _dataAccess.NonQuery("INSERT INTO AccountInRoles VALUES("+maxID+","+NextID+","+2+")"); //Default role is user
                return (RegisterState)Enum.Parse(typeof(RegisterState),dt.Rows[0][0].ToString());
            }
            catch
            {
                return RegisterState.FailedConnect;
            }
        }

        public Account GetAccount(string username)
        {
            List<Account> lst = EntityHelper<Account>.ConvertToList(_dataAccess.Query("SELECT * FROM Account WHERE Username=N'"+username+"'"));
            if (lst.Count == 0)
                return null;
            return lst[0];
        }

        public void UpdateProfile()
        {
            throw new NotImplementedException();
        }

        public bool UserIsInRole(string username, string rolename)
        {
            string query = "SELECT COUNT(*) ";
            query += "FROM Account INNER JOIN AccountInRoles ON Account.AccountID = AccountInRoles.AccountID ";
            query += "INNER JOIN Roles ON AccountInRoles.RolesID=Roles.RolesID ";
            query += "WHERE Account.Username='"+username+"' AND Roles.Name='"+rolename+"'";
            DataTable dt = _dataAccess.Query(query);
            return dt.Rows[0][0].ToString() != "0";
        }
    }
}
