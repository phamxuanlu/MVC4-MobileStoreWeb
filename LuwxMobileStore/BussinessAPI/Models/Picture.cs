using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace MobileStore.Bussiness.Models
{
	public class Picture
	{
		public int PictureID { get; set; }
		public int ProductID { get; set; }
		public string Title { get; set; }
		public string Location { get; set; }
	}
}
