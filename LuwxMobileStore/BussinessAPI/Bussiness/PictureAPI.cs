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
    public class PictureAPI
    {
        DataAccess _dataAccess = new DataAccess();

        public List<Picture> PicturesOfProduct(int ProductID)
        {
            DataTable dt = _dataAccess.Query("SELECT * FROM Picture WHERE ProductID="+ProductID);
            List<Picture> ListPics = EntityHelper<Picture>.ConvertToList(dt);
            return ListPics;
        }
    }
}
