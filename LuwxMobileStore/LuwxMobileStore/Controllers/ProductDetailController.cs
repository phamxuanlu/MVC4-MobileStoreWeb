using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MobileStore.Bussiness;
using MobileStore.Bussiness.Models;

namespace MobileStore.Controllers
{
    public class ProductDetailController : Controller
    {
        ProductAPI _productAPI = new ProductAPI();
        CategoryAPI _categoryAPI = new CategoryAPI();
        PictureAPI _pictureAPI = new PictureAPI();
        SpecificationAPI _specificationAPI = new SpecificationAPI();

        public ActionResult ViewDetail(int ID)
        {
            Product pr = _productAPI.GetProduct(ID);
            if (pr != null)
            {
                Category ct = _categoryAPI.GetCategory(pr.CategoryID);
                ViewData["Category"] = ct;
                List<Picture> pts = _pictureAPI.PicturesOfProduct(pr.ProductID);
                ViewData["Pictures"] = pts;
                List<Specification> lst = _specificationAPI.SpecificationOfProduct(ID);
                ViewData["Specifications"] = lst;
            }
            return View(pr);
        }

        public ActionResult _PartialRelatedProducts()
        {
            return PartialView();
        }

    }
}
