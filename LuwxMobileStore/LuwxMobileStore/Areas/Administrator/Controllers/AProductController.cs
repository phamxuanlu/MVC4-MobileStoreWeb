using DataLayer;
using MobileStore.Areas.Administrator.Models;
using MobileStore.Bussiness;
using MobileStore.Bussiness.Models;
using System;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MobileStore.Areas.Administrator.Controllers
{
    public class AProductController : AdminLayoutController
    {
        //
        // GET: /Administrator/AProduct/

        ProductAPI _products = new ProductAPI();
        CategoryAPI _categories = new CategoryAPI();
        SpecificationAPI _specs = new SpecificationAPI();
        DataManipulation _dObject = new DataManipulation();

        #region QueryConfig
        CategoryType catType = CategoryType.Brand;
        int page = 1;
        int pageSize = 10;
        #endregion
        public ActionResult Index(string type)
        {
            ViewBag.type = type;
            ViewBag.Title = "MobileStore - Quản lý danh sách sản phẩm";
            return View();
        }

        public ActionResult _ListProducts()
        {
            ReadConfigString(Request.QueryString);
            if (catType == CategoryType.Accessories)
                ViewBag.type = "Accessories";
            else
                ViewBag.type = "Phone";
            List<Product> lst = _products.GetProductByPage(page, pageSize, catType, false);
            List<Category> lstCat = _categories.AllCategories();
            ViewData["Cats"] = lstCat;
            ViewData["Products"] = lst;
            return PartialView();
        }

        public ActionResult _Paging()
        {
            ReadConfigString(Request.QueryString);
            if (catType == CategoryType.Accessories)
                ViewBag.type = "Accessories";
            else
                ViewBag.type = "Phone";
            int TotalPage = (int)(((float)_products.TotalPage(catType))/pageSize) +1;
            ViewBag.TotalPage = TotalPage;
            ViewBag.Page = page;
            return PartialView();
        }

        private void ReadConfigString(NameValueCollection QueryString)
        {
            if (QueryString["catType"] != null)
            {
                string t = Request.QueryString["catType"];

                if (t.ToLower().Equals("brand"))
                    catType = CategoryType.Brand;
                else if (t.ToLower().Equals("accessories"))
                    catType = CategoryType.Accessories;
                else
                    catType = CategoryType.Brand;
            }
            if (QueryString["page"] != null)
                page = int.Parse(QueryString["page"].ToString());

            if (QueryString["pageSize"] != null)
                pageSize = int.Parse(QueryString["pageSize"].ToString());
        }


        [HttpGet]
        public ActionResult Add()
        {
            List<Category> lstCat = _categories.AllCategories();
            ViewData["Cats"] = lstCat;
            return View();
        }

        [HttpPost]
        public ActionResult Add(AddProductModel product)
        {
            Product nProduct = new Product();
            nProduct.ProductID = _products.GetNextID();
            nProduct.Name = product.Name;
            nProduct.CategoryID = product.CategoryID;
            nProduct.Description = product.Description;
            nProduct.ImageSource = product.ImageSource;
            nProduct.ListedPrice = product.ListedPrice;
            nProduct.ImportDate = DateTime.Now;
            nProduct.Quantity = product.Quantity;
            string[] specs = product.Specifications.Split('\n');
            for (int i = 0; i < specs.Length;i++ )
            {
                string[] val = specs[i].Split(':');
                Specification s = new Specification();
                s.SpecificationID = _specs.GetNextID();
                s.Name = val[0];
                s.Value = val[1];
                s.ProductID = nProduct.ProductID;
                _dObject.Insert(s);

            }
            _dObject.Insert(nProduct);
            return Json("success");
        }
    
        [HttpPost]
        public ActionResult Delete(int id)
        {
            Product pr = new Product();
            pr.ProductID = id;
            //_dObject.Delete(pr);
            return Json("success");
        }

        [HttpGet]
        public ActionResult Edit(int ID)
        {
            Specification[] specs = _specs.SpecificationOfProduct(ID).ToArray();
            string s = "";
            foreach(Specification spec in specs)
            {
                s += spec.Name + ":" + spec.Value+"\n";
            }
            ViewBag.Specs = s;
            Product pr = _products.GetProduct(ID);
            ViewData["Product"] = pr;
            List<Category> lstCat = _categories.AllCategories();
            ViewData["Cats"] = lstCat;
            return View();
        }

        [HttpPost]
        public ActionResult Edit(EditProductModel product)
        {
            Product nProduct = _products.GetProduct(product.ProductID);
            nProduct.Name = product.Name;
            nProduct.CategoryID = product.CategoryID;
            nProduct.Description = product.Description;
            nProduct.ImageSource = product.ImageSource==""?nProduct.ImageSource:product.ImageSource;
            nProduct.ListedPrice = product.ListedPrice;
            nProduct.Quantity = product.Quantity;
            string[] specs = product.Specifications.Trim('\n').Split('\n');
            for (int i = 0; i < specs.Length;i++ )
            {
                _specs.DeleteSpecsOfProduct(product.ProductID);
                string[] val = specs[i].Split(':');
                Specification s = new Specification();
                s.SpecificationID = _specs.GetNextID();
                s.Name = val[0];
                s.Value = val[1];
                s.ProductID = nProduct.ProductID;
                _dObject.Insert(s);
            }
            _dObject.Update(nProduct);
            return Json("success");
        }

    }
}
