using DataLayer;
using MobileStore.Areas.Administrator.Models;
using MobileStore.Bussiness;
using MobileStore.Bussiness.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MobileStore.Areas.Administrator.Controllers
{
    public class ACategoryController : AdminLayoutController
    {
        //
        // GET: /Administrator/ACategory/
        CategoryAPI _categories = new CategoryAPI();
        DataManipulation _dObject = new DataManipulation();
        public ActionResult Index()
        {
            ViewData["Cats"] = _categories.AllCategories();
            return View();
        }

        //Delete Ajax
        [HttpPost]
        public ActionResult Delete(int ID)
        {
            Category cat = new Category();
            cat.CategoryID = ID;
            _dObject.Delete(cat);
            return Json("success");
        }

        [HttpPost]
        public ActionResult Edit(int ID)
        {
            Category cat = _categories.GetCategory(ID);
            return Json(cat);
        }


        [HttpPost]
        public ActionResult Add(AddCategoryModel dat)
        {
            Category cat = new Category();
            cat.CategoryID = _categories.NextID();
            cat.Name = dat.Name;
            cat.Description = dat.Description;
            string catType = dat.CategoryType.ToLower();
            catType = catType[0].ToString().ToUpper()+catType;
            catType = catType.Remove(1, 1);
            cat.CategoryType = catType;
            _dObject.Insert(cat);
            return Json(cat);
        }

        [HttpPost]
        public ActionResult EditData(EditCategoryModel dat) 
        {
            Category cat = _categories.GetCategory(dat.CategoryID);

            cat.Name = dat.Name;
            cat.Description = dat.Description;
            string catType = dat.CategoryType.ToLower();
            catType = catType[0].ToString().ToUpper() + catType;
            catType = catType.Remove(1, 1);
            cat.CategoryType = catType;
            _dObject.Update(cat);
            return Json(cat);
        }
    }
}
