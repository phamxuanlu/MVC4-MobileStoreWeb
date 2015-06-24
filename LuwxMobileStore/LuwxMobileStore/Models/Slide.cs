using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MobileStore.Models
{
    

    public class Slide
    {
        public int SlideID { get; set; }
        public int SlideType { get; set; }
        public string ImageSource { get; set; }
        public string Title { get; set; }
        public string TextContent { get; set; }
    }
}