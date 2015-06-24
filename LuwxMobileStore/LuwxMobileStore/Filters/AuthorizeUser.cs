using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Security.Principal;
using MobileStore.Bussiness.Models;
using MobileStore.Bussiness;


namespace ESPORTVN.Filters
{

    [AttributeUsage(AttributeTargets.All, Inherited = true, AllowMultiple = true)]
    public class AuthorizeUser : AuthorizeAttribute
    {

        AccountAPI _accounts = new AccountAPI();
        public AuthorizeUser(string roles)
        {
            this.Roles = roles;
        }

        public override void OnAuthorization(AuthorizationContext filterContext)
        {
            //base.OnAuthorization(filterContext);
            if (!filterContext.HttpContext.User.Identity.IsAuthenticated)
            {
                filterContext.Result = new HttpUnauthorizedResult();
                //   return;
            }
            else
            {
                Account currentUser = null;
                try
                {
                    currentUser = filterContext.HttpContext.Session["CurrentUser"] as Account;
                    if (currentUser == null)
                    {
                        filterContext.Result = new HttpUnauthorizedResult();
                    }
                    else
                    {
                        string[] roles = this.Roles.Split(',');
                        bool f = false;
                        for (int i = 0; i < roles.Length; i++)
                        {
                            if (_accounts.UserIsInRole(currentUser.Username, roles[i]))
                            {
                                f = true;
                            }
                        }
                        if(!f)
                        {
                            filterContext.Result = new HttpUnauthorizedResult();
                        }
                    }

                }
                catch
                {
                    filterContext.Result = new HttpUnauthorizedResult();
                }
            }

            if (filterContext.Result is HttpUnauthorizedResult)
            {
                string area = filterContext.RequestContext.RouteData.DataTokens["area"] as string;
                if (string.Equals("Administrator", area, StringComparison.OrdinalIgnoreCase))
                {
                    var requestUrl = filterContext.HttpContext.Request.Url;
                    var urlHeplper = new UrlHelper(filterContext.RequestContext);
                    filterContext.Result = new RedirectResult("/Administrator/AAccount/Login?returnUrl=" + requestUrl);
                }
            }

        }
    }
}