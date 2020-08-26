using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace webQuanLyBanHang4._0
{
    public partial class Logout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["USER"] = false;
            Response.Redirect("pageDANHSACHSANPHAM.aspx");
        }
    }
}