using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace MobileStore.Bussiness.Models
{
	public class OrderDetail
	{
		public int OrderDetailID { get; set; }
		public int OrdersID { get; set; }
		public int ProductID { get; set; }
		public int Quantity { get; set; }
		public int Price { get; set; }
		public string Note { get; set; }
	}
}
