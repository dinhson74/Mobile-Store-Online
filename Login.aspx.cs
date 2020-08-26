using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using webQuanLyBanHang4._0.App_Code;
using webQuanLyBanHang4._0.App_Data;

namespace webQuanLyBanHang4._0
{
    public partial class LOGIN : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void btndangnhap_Click(object sender, EventArgs e)
        {
            MyDBDataContext db = new MyDBDataContext();
             int IDMAKH = db.PS_LOGIN(txttendangnhap.Text.Trim(), txtmatkhau.Text.Trim());
             if(IDMAKH > 0)
             {

                 Session["USER"] = true;
                 Response.Redirect("pageDANHSACHSANPHAM.aspx");

             }
             else
             {
                lbthongbao.Text = "Đăng nhập thất bại. Mời bạn nhập lại !!";
                txttendangnhap.Text = "";
                txtmatkhau.Text = "";
                txttendangnhap.Focus();
             }
       
        }
    }
}