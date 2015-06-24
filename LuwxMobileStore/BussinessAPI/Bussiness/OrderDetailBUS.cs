using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace MobileStore.Bussiness
{
    public class OrderDetailBUS
    {
        DataLayer.DataAccess _dataAccess = new DataLayer.DataAccess();
        public int NextID()
        {
           return _dataAccess.NextID("OrderDetail","OrderDetailID");
        }
    }
}
