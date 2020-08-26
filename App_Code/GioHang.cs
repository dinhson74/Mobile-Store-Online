using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;


namespace webQuanLyBanHang4._0.App_Code
{
    public class GioHang
    {
        Dictionary<String, DataRow> CART;
        public GioHang()
        {
            CART = new Dictionary<string, DataRow>();
        }
        public Boolean AddItem(DataRow itemrow, Int16 soluongton)
        {
            bool tran = false;
            String key = itemrow["IDMASP"].ToString();
            if (CART.ContainsKey(key))
            {
                Int32 Soluongmua = Convert.ToInt32(CART[key]["SOLUONG"].ToString())
                               + Convert.ToInt32(itemrow["SOLUONG"].ToString());
                if(Soluongmua <= soluongton)
                {
                    CART[key]["SOLUONG"] = Soluongmua;
                    tran = true;
                }    
            }

            else
            {
                CART.Add(key, itemrow);
                tran = true;
            }
            return tran;
        }
        public void DeleleItem(string key)
        {
            
            CART.Remove(key);
        }
        public double TinhTongTien()
        {
            double tongtien = 0;
            foreach (DataRow row in CART.Values)
            {
                tongtien += Convert.ToDouble(row["SOLUONG"].ToString())
                    * Convert.ToDouble(row["DONGIA"].ToString());
            }
            return tongtien;
        }
        public DataTable DANHSACHGIOHANG()
        {
            DataTable tb = new DataTable();
            tb.Columns.Add("IDMASP", typeof(Int16));
            tb.Columns.Add("TENSP", typeof(string));
            tb.Columns.Add("SOLUONG", typeof(Int16));
            tb.Columns.Add("DONGIA", typeof(double));
            tb.Columns.Add("HINHANH", typeof(string));
            tb.Columns.Add("THANHTIEN", typeof(double));
            foreach (DataRow row in this.CART.Values)
            {
                tb.Rows.Add(row.ItemArray);
                
            }
            return tb;
        }

    }
}