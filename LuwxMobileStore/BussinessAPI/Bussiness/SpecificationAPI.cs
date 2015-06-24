using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DataLayer;
using MobileStore.Bussiness.Models;
using System.Data;
using MobileStore.Utilities.Helper;

namespace MobileStore.Bussiness
{
    public class SpecificationAPI
    {
        DataAccess _dataAccess = new DataAccess();
        
        public List<Specification> SpecificationOfProduct(int ProductID)
        {
            DataTable dt = _dataAccess.Query("SELECT * FROM Specification WHERE ProductID="+ProductID);
            List<Specification> ListSpec = EntityHelper<Specification>.ConvertToList(dt);
            return ListSpec;
        }

        public int GetNextID()
        {
            return _dataAccess.NextID("Specification", "SpecificationID");
        }

        public void DeleteSpecsOfProduct(int ProductID)
        {
            _dataAccess.NonQuery("DELETE FROM Specification WHERE ProductID="+ProductID);
        }
    }
}
