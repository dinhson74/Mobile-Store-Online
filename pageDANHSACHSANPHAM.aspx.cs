using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using webQuanLyBanHang4._0.App_Code;


namespace webQuanLyBanHang4._0
{
    public partial class pageDANHSACHSANPHAM : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {   
            string path = Server.MapPath("App_Data\\dbQuanLyBanHang.mdf");
            XuLyDuLieu xulydulieu = new XuLyDuLieu(path);
            string IDMADM = Request.QueryString.Get("IDMADM");
            if(IDMADM != null)
            {
                string SQL = "select * from tbSANPHAM where IDMADM="+ IDMADM;
                this.DLSANPHAM.DataSource = xulydulieu.Bangdulieu(SQL);
                this.DLSANPHAM.DataBind();
            }           
        }
    }
}