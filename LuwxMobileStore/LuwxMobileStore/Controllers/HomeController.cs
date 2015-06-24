using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MobileStore.Bussiness;
using System.Data;
using MobileStore.Utilities.Helper;
using MobileStore.Bussiness.Models;


namespace MobileStore.Controllers
{
    public class HomeController : LayoutController
    {
        ProductAPI productAPI = new ProductAPI();
        SlideAPI _slideAPI = new SlideAPI();
        CategoryAPI _categoryAPI = new CategoryAPI();

        public ActionResult Index()
        {
            return View();
        }

        public ActionResult _PartialBanner()
        {
            List<Slide> ListSlides = _slideAPI.GetSlideFor(SlideType.FlexSlider);
            ViewData["ListSlides"] = ListSlides;
            List<Slide> PromoBanner = _slideAPI.GetSlideFor(SlideType.PromoBanner);
            ViewData["PromoBanner"] = PromoBanner;
            return PartialView();
        }

        public ActionResult _PartialListNewProduct()
        {
            List<Product> ListProducts;
            ListProducts = productAPI.GetNewProducts(6);
            ViewData["ListNewProducts"] = ListProducts;
            return PartialView();
        }

        public ActionResult _PartialListTopSales()
        {
            List<Product> ListProducts;
            ListProducts = productAPI.GetTopSales(6);
            ViewData["TopSales"] = ListProducts;
            return PartialView();
        }

        public ActionResult _PartialBrandFilter()
        {
            List<Category> ListCats = _categoryAPI.AllCategories();
            ViewData["Categories"] = ListCats;
            List<Product> ListProducts = new List<Product>();
            for(int i=0;i<ListCats.Count;i++)
            {
                ListProducts.AddRange(productAPI.GetByCategory(ListCats[i].CategoryID,6));
            }
            ViewData["ListProducts"] = ListProducts;
            return PartialView();
        }



    }
}
