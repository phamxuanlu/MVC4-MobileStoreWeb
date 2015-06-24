using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace MobileStore.Bussiness.Models
{
	public class Product
	{
		public int ProductID { get; set; }
		public int CategoryID { get; set; }
		public string Name { get; set; }
		public string Description { get; set; }
		public int Price { get; set; }
		public int OldPrice { get; set; }
		public int ListedPrice { get; set; }
		public int Discount { get; set; }
		public DateTime ImportDate { get; set; }
		public int Quantity { get; set; }
		public string ImageSource { get; set; }
	}
}
