using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MobileStore.Areas.Administrator.Models
{
    public class AddProductModel
    {
        public string Name { get; set; }
        public int CategoryID { get; set; }
        public int Quantity { get; set; }
        public int ListedPrice { get; set; }
        public string Description { get; set; }
        public string ImageSource { get; set; }
        public string Specifications { get; set; } //unit: percent % 
    }

    public class EditProductModel
    {
        public int ProductID { get; set; }
        public string Name { get; set; }
        public int CategoryID { get; set; }
        public int Quantity { get; set; }
        public int ListedPrice { get; set; }
        public string Description { get; set; }
        public string ImageSource { get; set; }
        public string Specifications { get; set; } //unit: percent % 
    }
}