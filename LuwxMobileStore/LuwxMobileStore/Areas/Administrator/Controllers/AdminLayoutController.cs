using ESPORTVN.Filters;
using MobileStore.Bussiness.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MobileStore.Areas.Administrator.Controllers
{
    [AuthorizeUser("Admin")]
    public class AdminLayoutController : Controller
    {
        public AdminLayoutController()
        {
            
        }

        public ActionResult Header()
        {
            ViewBag.SiteTitle = "Mobile Store";
            return PartialView();
        } 

        public ActionResult SecondaryBar()
        {
            Account acc = this.HttpContext.Session["CurrentUser"] as Account;
            ViewData["Account"] = acc;
            return PartialView();
        }

        public ActionResult Sidebar()
        {
            return PartialView();
        }
    }
}
