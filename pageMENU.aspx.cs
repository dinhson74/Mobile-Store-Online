using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using webQuanLyBanHang4._0.App_Code;

namespace webQuanLyBanHang4._0
{
    public partial class pageMENU : System.Web.UI.Page
    {
        string SQL;
        public string strMENU;
        XuLyDuLieu xulydulieu;
        DataTable tbmenu;
        protected void Page_Load(object sender, EventArgs e)
        {
            string path = Server.MapPath("App_Data\\dbQuanLyBanHang.mdf");
            xulydulieu = new XuLyDuLieu(path);
            SQL = "select * from tbDANHMUC";
            tbmenu = xulydulieu.Bangdulieu(SQL);
            tbmenu.DefaultView.RowFilter = "IDPARENT=0";
            DataTable tbmenuPARENT = tbmenu.DefaultView.ToTable();
            strMENU = "<div class='nestedsidemenu'>";
            strMENU += "<ul>";
            foreach (DataRow row in tbmenuPARENT.Rows)
            {
                strMENU += "<li>";
                strMENU += "<a href ='#'>" + row["TENDM"].ToString() + " </a >";
                DeQuyMENU(row["IDMADM"].ToString());
                strMENU += "</li>";
            }
            strMENU += "</ul>";
            strMENU += "</div>";
        }
        public void DeQuyMENU(string IDPARENT)
        {
            tbmenu.DefaultView.RowFilter = "IDPARENT=" + IDPARENT;
            DataTable tbmenuPARENT = tbmenu.DefaultView.ToTable();
            if (tbmenuPARENT.Rows.Count > 0)
            {
                strMENU += "<ul>";
                foreach (DataRow row in tbmenuPARENT.Rows)
                {
                    strMENU += "<li>";
                    strMENU += "<a href='#'>" + row["TENDM"].ToString() + "</a>";
                    DeQuyMENU(row["IDMADM"].ToString());
                    strMENU += "</li>";
                }
                strMENU += "</ul>";
            }
        }
    }
}