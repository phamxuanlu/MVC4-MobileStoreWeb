using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MobileStore.Controllers
{
    public class ErrorsController : Controller
    {
        public ActionResult Http404()
        {
            return View();
        }

        public ActionResult Error()
        {
            return View();
        }
    }
}
