using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MobileStore.Bussiness;
using MobileStore.Bussiness.Models;
using MobileStore.CartUtility;
using ESPORTVN.Filters;

namespace MobileStore.Controllers
{
    
    public class LayoutController : Controller
    {
        CategoryAPI _categoryAPI = new CategoryAPI();
        
        public LayoutController()
        {
           
        }
        public ActionResult _PartialHeader()
        {
            return PartialView();
        }

        public ActionResult _PartialNavigation()
        {
            List<Category> Brands = _categoryAPI.Brands(CategoryType.Brand);
            List<Category> Accessories = _categoryAPI.Brands(CategoryType.Accessories);
            ViewData["Brands"] = Brands;
            ViewData["Accessories"] = Accessories;
            return PartialView();
        }


        public ActionResult _PartialFooter()
        {

            return PartialView();
        }

        public ActionResult _PartialSubcribe()
        {
            return PartialView();
        }

        public ActionResult _PartialMiniCart()
        {
            if (HttpContext.Session["Cart"] != null)
                ViewData["Cart"] = HttpContext.Session["Cart"];
            else
            {
                Cart<Product> cart = new Cart<Product>("ProductID", "Quantity", "ListedPrice");
                ViewData["Cart"] = cart;
            }
            return PartialView();
        }
    }
}
