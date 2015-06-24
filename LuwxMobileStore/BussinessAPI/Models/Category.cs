using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace MobileStore.Bussiness.Models
{
	public class Category
	{
		public int CategoryID { get; set; }
		public string Name { get; set; }
		public string Description { get; set; }
		public string ImageSource { get; set; }
		public string CategoryType { get; set; }
	}
}
