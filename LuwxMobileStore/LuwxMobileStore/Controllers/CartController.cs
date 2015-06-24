using MobileStore.Bussiness;
using MobileStore.Bussiness.Models;
using MobileStore.CartUtility;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MobileStore.Controllers
{
    public class CartController : Controller
    {
        public Cart<Product> cart=new Cart<Product>("ProductID","Quantity","ListedPrice");

        private ProductAPI _productAPI = new ProductAPI();
        public ActionResult MyCart()
        {
            UpdateSession();
            ViewData["MyCart"] = HttpContext.Session["Cart"];
            return View();
        }

        private void UpdateSession()
        {
            if (HttpContext.Session["Cart"] == null)
                HttpContext.Session["Cart"] = cart;
            else
                cart = HttpContext.Session["Cart"] as Cart<Product>;
        }

        [HttpPost]
        public ActionResult AddToCart(int ID)
        {
            UpdateSession();
            Product pr = _productAPI.GetProduct(ID);
            cart.AddItem(pr, 1);
            HttpContext.Session["Cart"] = cart;
            return Json("success");
        }

        [HttpPost]
        public ActionResult UpdateToCart(int ID, int Quantity)
        {
            UpdateSession();
            Product pr = _productAPI.GetProduct(ID);
            cart.UpdateItem(pr, Quantity);
            HttpContext.Session["Cart"] = cart;
            return Json(pr.ListedPrice*Quantity);
        }

        [HttpPost]
        public ActionResult DeleteProduct(int ID)
        {
            UpdateSession();
            cart.DeleteItem(ID);
            HttpContext.Session["Cart"] = cart;
            return Json("success");
        }

        [HttpPost]
        public ActionResult GrandTotal()
        {
            UpdateSession();
            return Json(cart.CalculateAmount());
        }
    }
}
