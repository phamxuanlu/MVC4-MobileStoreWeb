using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MobileStore.Bussiness;
using MobileStore.Bussiness.Models;

namespace MobileStore.Controllers
{
    public class ProductController : LayoutController
    {
        CategoryAPI _categoryAPI = new CategoryAPI();
        ProductAPI _productAPI = new ProductAPI();

        public ActionResult ListProducts(string type)
        {
            ViewData["type"] = type;
            return View();
        }

        public ActionResult _PartialSidebarMenu(string type)
        {
            ViewData["cat-type"] = type;
            CategoryType ct = new CategoryType();
            if (type == "accessories")
            {
                ViewData["type"] = "Phụ kiện";
               
                ct = CategoryType.Accessories;
            }
            else
            {
                ViewData["type"] = "Điện thoại";
                ct = CategoryType.Brand;
            }

            List<Category> ListBrands = _categoryAPI.Brands(ct);
            ViewData["ListBrands"] = ListBrands;
            return PartialView();
        }

        public ActionResult _PartialProducts(string type)
        {
            ViewData["type"] = type;
            int Page=1;
            int PageSize=12;
            string SortField="ImportDate";
            bool IsDESC = true;
            if (Request.QueryString["sort-option"] != null)
            {
                string rq = Request.QueryString["sort-option"].ToString();
                if (rq == "new")
                    SortField = "ImportDate";
                else if (rq == "name")
                {
                    SortField = "Name";
                }
                else if (rq == "price-desc")
                {
                    SortField = "ListedPrice";
                    IsDESC = true;
                }
                else if (rq == "price")
                {
                    SortField = "ListedPrice";
                    IsDESC = false;
                }
            }
            if (Request.QueryString["quantity"] != null)
                PageSize = int.Parse(Request.QueryString["quantity"]);
            if (Request.QueryString["page"] != null)
                Page = int.Parse(Request.QueryString["page"]);

            CategoryType ct = CategoryType.Brand;
            if (type == "accessories")
                ct = CategoryType.Accessories;
            

            List<Product> ListProducts = _productAPI.GetProductByPage(Page, PageSize, ct,IsDESC);
            ViewData["ListProducts"] = ListProducts;
            return PartialView();
        }

        public ActionResult Pagging(string type)
        {
            ViewData["type"] = type;
            int Page = 1;
            int PageSize = 12;
            
            if (Request.QueryString["quantity"] != null)
                PageSize = int.Parse(Request.QueryString["quantity"]);
            if (Request.QueryString["page"] != null)
                Page = int.Parse(Request.QueryString["page"]);

            CategoryType ct = CategoryType.Brand;
            if (type == "accessories")
                ct = CategoryType.Accessories;
            int pages = _productAPI.TotalPage(ct)/PageSize;
            return PartialView();
        }

    }
}
