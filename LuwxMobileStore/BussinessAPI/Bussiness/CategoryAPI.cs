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
    public class CategoryAPI
    {
        DataAccess _dataAccess = new DataAccess();

        public List<Category> Brands(CategoryType ct)
        {
            DataTable dt = _dataAccess.Query("SELECT * FROM Category WHERE CategoryType='"+ct.ToString()+"'");
            return EntityHelper<Category>.ConvertToList(dt);
        }

        public List<Category> AllCategories()
        {
            DataTable dt = _dataAccess.Query("SELECT * FROM Category");
            return EntityHelper<Category>.ConvertToList(dt);
        }

        public Category Brand(int ID)
        {
            DataTable dt = _dataAccess.Query("SELECT * FROM Category WHERE CategoryID="+ID);
            List<Category> cts = EntityHelper<Category>.ConvertToList(dt);
            if(cts.Count==0)
                return null;
            return cts[0];
        }

        public Category GetCategory(int ID)
        {
            DataTable dt = _dataAccess.Query("SELECT * FROM Category WHERE CategoryID=" + ID);
            List<Category> lst = EntityHelper<Category>.ConvertToList(dt);
            if (lst.Count == 0)
                return null;
            else
                return lst[0];
        }

        public List<Product> ProductOfCategory(int BrandID)
        {
            return EntityHelper<Product>.ConvertToList(_dataAccess.Query("SELECT * FROM Product WHERE CategoryID="+BrandID));
        }

        public int NextID()
        {
            return _dataAccess.NextID("Category","CategoryID");
        }
    }
}
