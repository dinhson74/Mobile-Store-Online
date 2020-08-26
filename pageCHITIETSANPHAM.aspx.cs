using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using webQuanLyBanHang4._0.App_Code;

namespace webQuanLyBanHang4._0
{
    public partial class pageCHITIETSANPHAM : System.Web.UI.Page
    {
        XuLyDuLieu xulydulieu;

        protected void Page_Load(object sender, EventArgs e)
        {
            string path = Server.MapPath("App_Data\\dbQuanLyBanHang.mdf");
            xulydulieu = new XuLyDuLieu(path);
            string MASP = Request.QueryString.Get("MASP");
            
            if (MASP != null)
            {
                string SQL = "select * from tbSANPHAM where IDMASP=" + MASP;
                DataTable tb = xulydulieu.Bangdulieu(SQL);

                this.Repeater2.DataSource = tb;
                this.Repeater2.DataBind();
                SoLuong(Convert.ToUInt16(tb.Rows[0]["SOLUONG"]));
            }

        }
        public void SoLuong(int Soluong)
        {
            for (int i = 1; i <= Soluong; i++)
                this.drSOLUONG.Items.Add(i.ToString());
        }

        protected void btnGIOHANG_Click(object sender, EventArgs e)
        {                                       
            string MASP = Request.QueryString.Get("MASP");
            if (MASP != null)
            {
                string SQL = "select IDMASP,TENSP," + drSOLUONG.SelectedValue + "as SOLUONG,DONGIA,HINHANH,"
                + drSOLUONG.SelectedValue + " * DONGIA as THANHTIEN from tbSANPHAM where IDMASP=" + MASP;


                DataTable tb = xulydulieu.Bangdulieu(SQL);
                GioHang CART = null;
                Session.Timeout = 1;
                if (Session["CART"] == null)
                {
                    CART = new GioHang();
                    // CART.AddItem(tb.Rows[0]);
                }
                else
                {
                    CART = (GioHang)Session["CART"];
                    //CART.AddItem(tb.Rows[0]);
                }
                Int16 Soluongton = Convert.ToInt16(drSOLUONG.Items[drSOLUONG.Items.Count - 1].Value);
                if (CART.AddItem(tb.Rows[0], Soluongton))
                {
                    Session["CART"] = CART;
                    Response.Redirect("pageGIOHANG.aspx");
                }
                else
                {
                    Response.Write("<script>");
                    Response.Write("alert('Số lượng trong giỏ hàng nhiều hơn trong kho');");
                    Response.Write("</script>");
                }
                

            }
            
        }
    }
}