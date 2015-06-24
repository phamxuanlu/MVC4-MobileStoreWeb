using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MobileStore.Models
{
    public class Product
    {
        public int ProductID { get; set; }
        public int CategoryID { get; set; }
        public int BrandID { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
        public float Price { get; set; }
        public float OldPrice { get; set; }
        public float ListedPrice { get; set; }
        public float Discount { get; set; } //unit: percent %
        public DateTime ImportDate { get; set; }
        public int Quantity { get; set; }
        public string ImageSource { get; set; }
    }
}