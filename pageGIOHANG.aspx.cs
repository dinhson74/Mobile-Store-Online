using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using webQuanLyBanHang4._0.App_Code;

namespace webQuanLyBanHang4._0
{
    public partial class pageGIOHANG : System.Web.UI.Page
    {   public void LoadCart(GioHang CART)
        {
            this.GridView1.DataSource = CART.DANHSACHGIOHANG();
            this.GridView1.DataBind();
            this.GridView1.FooterRow.Cells[4].Text = "Tổng Tiền";
            this.GridView1.FooterRow.Cells[5].Text = CART.TinhTongTien().ToString("C2") +(" VNĐ");
            
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["CART"] != null && !IsPostBack)
            {
                GioHang CART = (GioHang)Session["CART"];
                LoadCart(CART);
            }

        }

        protected void btnXoa_Click(object sender, EventArgs e)
        {
            
                GioHang CART = (GioHang)Session["CART"];
                foreach (GridViewRow row in this.GridView1.Rows)
                {
                    if (row.FindControl("ckbITEM") is CheckBox)
                    {
                        CheckBox ckb = (CheckBox)row.FindControl("ckbITEM");
                        if (ckb.Checked)
                        {
                            String key = row.Cells[0].Text;
                            CART.DeleleItem(key);
                        }
                    }
                }
                Session["CART"] = CART;
                this.GridView1.DataSource = CART.DANHSACHGIOHANG();
                this.GridView1.DataBind();

            
        }
    }
}