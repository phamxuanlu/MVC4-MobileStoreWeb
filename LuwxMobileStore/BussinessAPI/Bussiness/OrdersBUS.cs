using DataLayer;
using MobileStore.Bussiness.Models;
using MobileStore.Utilities.Helper;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;

namespace MobileStore.Bussiness.Bussiness
{
    public class OrdersBUS
    {
        DataAccess _dataAccess = new DataAccess();

        public int NextID()
        {
            return _dataAccess.NextID("Orders","OrdersID");
        }

        public List<Orders> GetAllOrders(OrderStatus ods)
        {
            
            return EntityHelper<Orders>.ConvertToList(_dataAccess.Query("SELECT * FROM Orders WHERE [Status]="+(int)ods +" ORDER BY [OrderDate] DESC"));
        }

        public Orders GetOrder(int id)
        {
            List<Orders> lst= EntityHelper<Orders>.ConvertToList(_dataAccess.Query("SELECT * FROM Orders WHERE OrdersID = " + id));
            if (lst.Count == 0)
                return null;
            return
                lst[0];
        }

        public List<OrderDetail> GetDetails(int OrderID)
        {
            return EntityHelper<OrderDetail>.ConvertToList(_dataAccess.Query("SELECT * FROM OrderDetail WHERE OrdersID="+OrderID));
        }

        public List<Product> GetProducts(int OrderID)
        {
            return EntityHelper<Product>.ConvertToList(_dataAccess.Query("OrderBUS_GetProducts",new SqlParameter[]{new SqlParameter("@OrderID",OrderID)}));

        }

        public void Mark(int id,OrderStatus os)
        {
            _dataAccess.NonQuery("Update Orders SET [Status]="+((int)os).ToString()+" WHERE OrdersID="+id);
        }

    }
}
