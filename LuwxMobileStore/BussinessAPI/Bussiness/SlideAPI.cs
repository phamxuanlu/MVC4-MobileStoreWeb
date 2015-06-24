using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DataLayer;
using System.Data;
using MobileStore.Bussiness.Models;
using System.Data.SqlClient;
using MobileStore.Utilities.Helper;

namespace MobileStore.Bussiness
{
    public class SlideAPI
    {
        DataAccess _dataAccess = new DataAccess();
        DataManipulation _dtm = new DataManipulation();

        public List<Slide> GetSlideFor(SlideType slt)
        {
            SqlParameter[] sprms = new SqlParameter[] { new SqlParameter("@SlideType", slt) };
            DataTable dt = _dataAccess.Query("SlideAPI_GetSlides", sprms);
            return EntityHelper<Slide>.ConvertToList(dt);
        }

        public QueryState Insert(Slide slide)
        {
            try
            {
                _dtm.Insert(slide);
                return QueryState.Success;
            }
            catch
            {
                return QueryState.Disconnect;
            }
        }
    }
}
