using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MobileStore.Bussiness;
using System.Web.Security;
using MobileStore.Bussiness.Models;

namespace MobileStore.Controllers
{
    public class AccountController : Controller
    {
        AccountAPI _accountAPI = new AccountAPI();

        [HttpGet]
        public ActionResult WidgetLogin()
        {
            return PartialView();
        }


        [HttpGet]
        public ActionResult Login()
        {
            return PartialView();
        }

        [HttpGet]
        public ActionResult LoginBox()
        {
            return PartialView();
        }

        [HttpPost]
        //[ValidateAntiForgeryToken]
        public ActionResult Login(LoginModel lgModel)
        {
            bool result = _accountAPI.Login(lgModel.Username, lgModel.Password);
            if (result)
            {
                FormsAuthentication.SetAuthCookie(lgModel.Username, lgModel.RememberMe);
                return Json("success");
            }
            else
            {
                return Json("Tài khoản hoặc mật khẩu không đúng!");
            }
        }

        [HttpPost]
        public ActionResult Register(RegisterModel rgModel)
        {
            if (rgModel.Password != rgModel.ConfirmPassword)
                return Json("Xác nhận mật khẩu không khớp!");
            RegisterState rs = _accountAPI.Register(rgModel.Username, rgModel.Password, rgModel.Email);
            

            if (rs == RegisterState.UsernameIsExist)
            {
                return Json("Tài khoản đã tồn tại!");
            }
            if (rs == RegisterState.EmailIsExist)
            {
                return Json("Email đã được sử dụng!");
            }
            else
            {
                _accountAPI.Login(rgModel.Username, rgModel.Password);
                FormsAuthentication.SetAuthCookie(rgModel.Username, true);
                return Json("success");
            }
        }

        public ActionResult Logout()
        {
            FormsAuthentication.SignOut();
            return RedirectToAction("Index", "Home");
        }

    }
}
