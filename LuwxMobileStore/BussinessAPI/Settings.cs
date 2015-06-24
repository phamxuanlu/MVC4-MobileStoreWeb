using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DataLayer;

namespace MobileStore.Bussiness
{
    public class Settings
    {
        public static string ConnectionString { 
            get 
            { 
                return ApplicationSettings.ConnectionString; 
            }
            set 
            {
                ApplicationSettings.ConnectionString = value;
            }
        }
    }
}
