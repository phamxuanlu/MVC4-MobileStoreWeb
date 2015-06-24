using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Reflection;
using System.ComponentModel;

namespace MobileStore.Utilities.Helper
{
    public class EntityHelper<T> where T : new ()
    {
        public static List<T> ConvertToList(DataTable dt)
        {
            List<T> ListObject = new List<T>();
            if (dt == null)
                return ListObject;
            PropertyInfo[] arrProp = typeof(T).GetProperties();
            foreach (DataRow dr in dt.Rows)
            {
                T obj = new T();
                for(int i=0;i<arrProp.Length;i++)
                {
                    string strVal = dr[arrProp[i].Name].ToString().Trim();
                    if (string.IsNullOrEmpty(strVal))
                    {
                        arrProp[i].SetValue(obj, null, null);
                    }
                    else
                    {
                        TypeConverter tConvert = TypeDescriptor.GetConverter(arrProp[i].PropertyType);
                        object val = tConvert.ConvertFromString(strVal);
                        arrProp[i].SetValue(obj, val, null);
                    }
                }
                ListObject.Add(obj);
            }

            return ListObject;
        }

        //public static List<object> ConvertToListObj(DataTable dt)
        //{
        //    List<object> ListObject = new List<object>();
        //    PropertyInfo[] arrProp = typeof(T).GetProperties();
        //    foreach (DataRow dr in dt.Rows)
        //    {
        //        T obj = new T();
        //        for (int i = 0; i < arrProp.Length; i++)
        //        {
        //            string strVal = dr[arrProp[i].Name].ToString().Trim();
        //            if (string.IsNullOrEmpty(strVal))
        //            {
        //                arrProp[i].SetValue(obj, null, null);
        //            }
        //            else
        //            {
        //                TypeConverter tConvert = TypeDescriptor.GetConverter(arrProp[i].PropertyType);
        //                object val = tConvert.ConvertFromString(strVal);
        //                arrProp[i].SetValue(obj, val, null);
        //            }
        //        }
        //        ListObject.Add(obj);
        //    }

        //    return ListObject;
        //}
    }
}
