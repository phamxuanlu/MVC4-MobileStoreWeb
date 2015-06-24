using DataLayer;
using MobileStore.Bussiness;
using MobileStore.Bussiness.Bussiness;
using MobileStore.Bussiness.Models;
using MobileStore.CartUtility;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MobileStore.Controllers
{
    public class CheckoutController : Controller
    {
        //
        // GET: /Checkout/
        OrdersBUS orders = new OrdersBUS();
        OrderDetailBUS orderDetail = new OrderDetailBUS();
        DataManipulation _dObject = new DataManipulation();
        public ActionResult Checkout()
        {
            return View();
        }

        [HttpPost]
        public ActionResult SaveBill(FormCollection frmData)
        {
            Orders od = new Orders();
            Cart<Product> cart = HttpContext.Session["Cart"] as Cart<Product>;
            od.OrdersID = orders.NextID();
            od.AccountID = 1;
            od.Adress = frmData["txtAddess"];
            od.OrderDate = DateTime.Now;
            od.CMND = frmData["txtPassport"];
            od.Email = frmData["txtEmail"];
            od.FirstName = frmData["txtFName"];
            od.LastName = frmData["txtLName"];
            od.Note = frmData["txtNote"];
            od.PhoneNumber = frmData["txtPhone"];
            od.ReceiveAddress = frmData["txtReceive"];
            od.Status = (int)OrderStatus.Pending;
            od.TotalAmount = cart.CalculateAmount();
            for (int i = 0; i < cart.ListItems.Count;i++ )
            {
                OrderDetail ordl = new OrderDetail();
                ordl.OrderDetailID = orderDetail.NextID();
                ordl.OrdersID = od.OrdersID;
                ordl.ProductID = cart.ListItems[i].Item.ProductID;
                ordl.Quantity = cart.ListItems[i].Quantity;
                ordl.Price = cart.ListItems[i].Item.ListedPrice*cart.ListItems[i].Quantity;
                _dObject.Insert(ordl);
            }

            _dObject.Insert(od);
            return Json("ok");
        }

    }
}
