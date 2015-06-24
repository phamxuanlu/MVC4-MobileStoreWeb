using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MobileStore.CartUtility
{
    public class CartObject<T> where T:new()
    {
        public T Item { get; set; }
        public int Quantity { get; set; }

        public CartObject(T _item, int quantity)
        {
            this.Item = _item;
            this.Quantity = quantity;
        }

        public int Subtotal()
        {
            int price = (int)Item.GetType().GetProperty("ListedPrice").GetValue(Item, null);
            return price * Quantity;
        }

        public CartObject()
        { 
        
        }
    }
}