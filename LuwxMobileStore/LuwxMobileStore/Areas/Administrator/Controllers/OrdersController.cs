using MobileStore.Bussiness.Bussiness;
using MobileStore.Bussiness.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MobileStore.Areas.Administrator.Controllers
{
    public class OrdersController : AdminLayoutController
    {
        //
        // GET: /Administrator/Orders/
        OrdersBUS ordersBUS = new OrdersBUS();
        public ActionResult Index(string stt)
        {
            OrderStatus os = OrderStatus.Pending;
            if (stt != null)
            {
                if (stt.ToLower() == "rejected")
                    os = OrderStatus.Rejected;
                else if(stt.ToLower()=="accepted")
                    os = OrderStatus.Accepted;
            }
            List<Orders> lst = ordersBUS.GetAllOrders(os);
            ViewData["Orders"] = lst;
            return View();
        }


        public ActionResult ViewOrder(int ID)
        {
            ViewData["Order"] = ordersBUS.GetOrder(ID);
            ViewData["Details"] = ordersBUS.GetDetails(ID);
            ViewData["Products"] = ordersBUS.GetProducts(ID);
            return View();
        }

        [HttpPost]
        public ActionResult Accept(int ID)
        {
            ordersBUS.Mark(ID, OrderStatus.Accepted);
            return Json("success");
        }

        public ActionResult Reject(int ID)
        {
            ordersBUS.Mark(ID, OrderStatus.Rejected);
            return Json("success");
        }
    }
}
