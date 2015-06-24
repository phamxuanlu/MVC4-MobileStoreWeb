using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace MobileStore.Bussiness.Models
{
    public enum RegisterState
    {
        FailedConnect=0,
        UsernameIsExist=1,
        EmailIsExist=2,
        Success=3,
    }
}
