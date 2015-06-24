using MobileStore.Bussiness.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MobileStore.Areas.Administrator.Controllers
{
    public class HomeController : AdminLayoutController
    {
        //
        // GET: /Administrator/Index/

        public ActionResult Index()
        {
            
            return View();
        }

    }
}
