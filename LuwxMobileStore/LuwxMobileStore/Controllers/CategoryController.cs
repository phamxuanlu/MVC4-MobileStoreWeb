using MobileStore.Bussiness;
using MobileStore.Bussiness.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MobileStore.Controllers
{
    public class CategoryController : Controller
    {
        //
        // GET: /Category/
        CategoryAPI _categoryBUS = new CategoryAPI();

        public ActionResult ListProduct(int ID,string type)
        {
            ViewBag.Type = type;
            List<Product> ListByCat = _categoryBUS.ProductOfCategory(ID);
            ViewData["Products"] = ListByCat;
            return View();
        }

    }
}
