    using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using webQuanLyBanHang4._0.App_Code;
using System.Data.SqlClient;


namespace webQuanLyBanHang4._0
{
    public partial class pageDANGKY : System.Web.UI.Page
    {
        XuLyDuLieu xulydulieu;
        protected void Page_Load(object sender, EventArgs e)
        {
            string path = Server.MapPath("App_Data\\dbQuanLyBanHang.mdf");
            xulydulieu = new XuLyDuLieu(path);
        }

        protected void btnDANGKY_Click(object sender, EventArgs e)
        {
            String TENTK = txtTENDANGNHAP.Text;
            String MATKHAU = txtMATKHAU.Text;
            String HOTENKH = txtTENKH.Text;
            String Gioitinh = rdbtGIOITINH.SelectedValue.ToString();
            String NGAYSINH = txtNGAYSINH.Text;
            String SOTHICH = txtSOTHICH.Text;
            String NGHENGHIEP = txtNGHENGHIEP.Text;
            String TRINHDO = txtTRINHDO.Text;
            String DIACHI = txtDIACHI.Text;
            String Email = txtEMAIL.Text;
           
            SqlParameter[] pr = new SqlParameter[10];
            pr[0] = new SqlParameter("@TENTAIKHOAN",TENTK);
            pr[1] = new SqlParameter("@MATKHAU",MATKHAU);
            pr[2] = new SqlParameter("@HOTENKH", HOTENKH);
            pr[3] = new SqlParameter("@GIOITINH",Gioitinh);
            pr[4] = new SqlParameter("@NGAYSINH",NGAYSINH);
            pr[5] = new SqlParameter("@SOTHICH", SOTHICH);
            pr[6] = new SqlParameter("@NGHENGHIEP",NGHENGHIEP);
            pr[7] = new SqlParameter("@TRINHDO", TRINHDO);
            pr[8] = new SqlParameter("@DIACHI", DIACHI);
            pr[9] = new SqlParameter("@EMAIL",Email);
            xulydulieu.Thucthithutuc("PS_THEMMOIKH", pr);
            lbthongbaodk.Text = "CHÚC MỪNG BẠN ĐÃ ĐĂNG KÝ THÀNH CÔNG";
            txtTENDANGNHAP.Text = "";
            txtMATKHAU.Text = "";
            txtMATKHAU_XACNHAN.Text = "";

        }
    }
}