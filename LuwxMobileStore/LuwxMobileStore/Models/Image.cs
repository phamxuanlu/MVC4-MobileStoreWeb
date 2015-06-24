using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MobileStore.Models
{
    public class Image
    {
        public int ImageID { get; set; }
        public int ProductID { get; set; }
        public string Title { get; set; }
        public string Source { get; set; }

    }
}