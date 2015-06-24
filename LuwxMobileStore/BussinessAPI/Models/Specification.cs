using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace MobileStore.Bussiness.Models
{
	public class Specification
	{
		public int SpecificationID { get; set; }
		public int ProductID { get; set; }
		public string Name { get; set; }
		public string Value { get; set; }
		public string ImageSource { get; set; }
	}
}
