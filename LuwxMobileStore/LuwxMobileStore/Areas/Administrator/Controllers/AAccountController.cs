using ESPORTVN.Filters;
using MobileStore.Bussiness;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Security;

namespace MobileStore.Areas.Administrator.Controllers
{
    public class AAccountController : Controller
    {
        //
        // GET: /Admin/Login/
        public ActionResult Login()
        {
            return View();
        }

        AccountAPI _accounts = new AccountAPI();

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Login(FormCollection frmLogin, string returnUrl)
        {
            string username = "";
            string password = "";
            if (frmLogin["username"] != null)
                username = frmLogin["username"].ToString();
            if (frmLogin["password"] != null)
                password = frmLogin["password"].ToString();

            if (_accounts.Login(username, password))
            {
                FormsAuthentication.SetAuthCookie(username, false);
                this.HttpContext.Session["CurrentUser"] = _accounts.GetAccount(username);
                return RedirectToAction("Index", "Home", new { area = "Administrator" });
            }
            else
            {
                return View();
            }
        }

        [AuthorizeUser("Admin")]
        public ActionResult Logout()
        {
            if (this.HttpContext.User.Identity.IsAuthenticated)
            {
                FormsAuthentication.SignOut();
                for (int i = 0; i < this.HttpContext.Session.Keys.Count;i++ )
                {
                    if (this.HttpContext.Session.Keys[i] != "MyCart")
                        this.HttpContext.Session[this.HttpContext.Session.Keys[i]] = null;
                }
            }
            return RedirectToAction("Login", "AAccount", new { area = "Administrator" });
        }
    }
}
