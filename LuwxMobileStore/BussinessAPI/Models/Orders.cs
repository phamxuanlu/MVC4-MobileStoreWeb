using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace MobileStore.Bussiness.Models
{
	public class Orders
	{
		public int OrdersID { get; set; }
		public DateTime OrderDate { get; set; }
		public int TotalAmount { get; set; }
		public string Adress { get; set; }
		public string Note { get; set; }
		public int AccountID { get; set; }
		public int Status { get; set; }
		public string FirstName { get; set; }
		public string LastName { get; set; }
		public string Email { get; set; }
		public string PhoneNumber { get; set; }
		public string ReceiveAddress { get; set; }
		public string CMND { get; set; }
	}
}
