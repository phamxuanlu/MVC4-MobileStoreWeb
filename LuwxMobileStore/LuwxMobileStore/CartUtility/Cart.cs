using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MobileStore.CartUtility
{
    public class Cart<T> where T :new()
    {
        private List<CartObject<T>> Items = new List<CartObject<T>>();
        private int Amount = 0;
        public string CartName { get; set; }
        public List<CartObject<T>> ListItems { get { return Items; } }
        public string ItemIdentityField { get; set; }
        public string QuantityField { get; set; }
        public string PriceField { get; set; }

        public Cart(string _ItemIdentityField, string _QuantityField, string _PriceField)
        {
            this.ItemIdentityField = _ItemIdentityField;
            this.QuantityField = _QuantityField;
            this.PriceField = _PriceField;
            CartName = "ASP.NETMVC4Cart";
        }

        private int GetIdentity(CartObject<T> item)
        {
            if (typeof(T).GetProperty(ItemIdentityField) == null)
                throw new MissingFieldException("Kiểm tra lại tên của thuộc tính ID");
            return (int)item.Item.GetType().GetProperty(ItemIdentityField).GetValue(item.Item, null);
        }

        public void AddItem(T _Item, int _quantity)
        {
            CartObject<T> co = new CartObject<T>(_Item, _quantity);
            for (int i = 0; i < Items.Count;i++ )
            {
                if (GetIdentity(co) == GetIdentity(Items[i]))
                {
                    Items[i].Quantity += co.Quantity;
                    CalculateAmount();
                    return;
                }
            }
            Items.Add(co);
            CalculateAmount();
        }

        public void UpdateItem(T item, int quantity)
        {
            if (quantity < 0)
                return;
            if(quantity==0)
            {
                DeleteItem((int)item.GetType().GetProperty(ItemIdentityField).GetValue(item,null));
            }
            CartObject<T> co = new CartObject<T>(item, quantity);
            int index = Items.FindIndex(x => GetIdentity(x) == GetIdentity(co));
            if ( index==-1)
                throw new Exception("Không tồn tại Item cần update trong giỏ hàng");
            else
            {
                Items[index] = co;
                CalculateAmount();
            }
        }

        public void DeleteItem(int Identity)
        {
            int index = Items.FindIndex(x => GetIdentity(x) == Identity);
            if (index == -1)
                throw new Exception("Không tồn tại Item cần xóa trong giỏ hàng");
            else
            {
                Items.RemoveAt(index);
                CalculateAmount();
            }
        }

        public int CalculateAmount()
        {
            if (typeof(T).GetProperty(PriceField) == null)
                throw new MissingFieldException("Kiểm tra lại tên của thuộc tính Price");
            int total = 0;
            for (int i = 0; i < Items.Count; i++)
            {
                int Price = int.Parse(Items[i].Item.GetType().GetProperty(PriceField).GetValue(Items[i].Item, null).ToString());
                total += Price * Items[i].Quantity;
            }
            Amount = total;
            return total;
        }
    }
}