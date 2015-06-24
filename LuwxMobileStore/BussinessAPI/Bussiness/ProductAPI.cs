using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using DataLayer;
using System.Data.SqlClient;
using MobileStore.Bussiness.Models;
using MobileStore.Utilities.Helper;

namespace MobileStore.Bussiness
{
    public class ProductAPI
    {
        DataAccess _dataAccess = new DataAccess();


        public ProductAPI()
        { 
        
        }

        public int GetNextID()
        {
            return _dataAccess.NextID("Product", "ProductID");
        }
        public Product GetProduct(int ID)
        {
            DataTable dt = _dataAccess.Query("SELECT * FROM Product WHERE ProductID="+ID);
            List<Product> lst = EntityHelper<Product>.ConvertToList(dt);
            if (lst.Count == 0)
                return null;
            else
                return lst[0];
        }

        public List<Product> GetProductByPage(int Page, int PageSize, CategoryType ct, bool IsDESC)
        {
            SqlParameter[] sprms = new SqlParameter[] { 
                                        new SqlParameter("@CategoryType", ct.ToString()),
                                        new SqlParameter("@PageNumber",Page),
                                        new SqlParameter("@PageSize",PageSize)
            };

            DataTable dt = _dataAccess.Query("ProductAPI_GetProductsByPage", sprms);
            return EntityHelper<Product>.ConvertToList(dt);
        }

        public int TotalPage(CategoryType ct)
        {
            SqlParameter[] sprms = new SqlParameter[] { new SqlParameter("@CategoryType", ct.ToString()) };
            DataTable dt = _dataAccess.Query("ProductAPI_TotalPages", sprms);
            return int.Parse(dt.Rows[0][0].ToString());
        }

        public List<Product> GetNewProducts(int NumberOfProduct)
        { 
            SqlParameter[] sprms = new SqlParameter[]{new SqlParameter("@NumberOfProduct",NumberOfProduct)};
            DataTable dt = _dataAccess.Query("ProductAPI_GetProductsNew", sprms);
            return EntityHelper<Product>.ConvertToList(dt);
        }

        public List<Product> GetTopSales(int NumberOfProduct)
        {
            SqlParameter[] sprms = new SqlParameter[] { new SqlParameter("@NumberOfProduct", NumberOfProduct) };
            DataTable dt = _dataAccess.Query("ProductAPI_TopSales", sprms);
            return EntityHelper<Product>.ConvertToList(dt);
        }

        public List<Product> GetByCategory(int CategoryID, int Count)
        {
            SqlParameter[] sprms = new SqlParameter[] { 
                                new SqlParameter("@CategoryID",CategoryID),
                                new SqlParameter("@NumberOfProduct", Count) };
            DataTable dt = _dataAccess.Query("ProductAPI_ProductsOfCategory", sprms);
            return EntityHelper<Product>.ConvertToList(dt);
        }
    }
}
