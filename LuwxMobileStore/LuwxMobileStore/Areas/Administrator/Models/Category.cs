using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MobileStore.Areas.Administrator.Models
{
    public class AddCategoryModel
    {
        public string Name { get; set; }
        public string Description { get; set; }
        public string CategoryType { get; set; }
    }

    public class EditCategoryModel
    {
        public int CategoryID { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
        public string CategoryType { get; set; }
    }
}