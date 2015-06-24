using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Http;
using System.Web.Mvc;
using System.Web.Optimization;
using System.Web.Routing;
using MobileStore.Bussiness;
using System.Configuration;
using MobileStore.Controllers;


namespace LuwxMobileStore
{
    // Note: For instructions on enabling IIS6 or IIS7 classic mode, 
    // visit http://go.microsoft.com/?LinkId=9394801

    public class MvcApplication : System.Web.HttpApplication
    {
        protected void Application_Start()
        {
            Settings.ConnectionString = ConfigurationManager.ConnectionStrings["MobileStoreConnection"].ConnectionString;

            AreaRegistration.RegisterAllAreas();

            WebApiConfig.Register(GlobalConfiguration.Configuration);
            FilterConfig.RegisterGlobalFilters(GlobalFilters.Filters);
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);
            AuthConfig.RegisterAuth();

        }

        protected void Application_Error()
        {
            //HttpException exception = Server.GetLastError() as HttpException;
            //Response.Clear();
            //Server.ClearError();
            //RouteData rData = new RouteData();
            //rData.Values["controller"] = "Errors";
            //rData.Values["action"] = "Error";
            //Response.StatusCode = 404;
            //rData.Values["action"] = "Http404";
            //Response.TrySkipIisCustomErrors = true;
            //IController errorsController = new ErrorsController();
            //RequestContext rc = new RequestContext(new HttpContextWrapper(Context), rData);
            //errorsController.Execute(rc);
        }
    }
}