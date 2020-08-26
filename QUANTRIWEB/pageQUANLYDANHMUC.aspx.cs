using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using webQuanLyBanHang4._0.App_Code;

namespace webQuanLyBanHang4._0.QUANTRIWEB
{
    public partial class pageQUANLYDANHMUC : System.Web.UI.Page
    {
        XuLyDuLieu xulydulieu;
        string SQL;
        public void DANHMUCCHA()
        {
            SQL = "Select * from tbDANHMUC";
            this.drDANHMUCCHA.DataSource = xulydulieu.Bangdulieu(SQL);
            this.drDANHMUCCHA.DataTextField = "TENDM";
            this.drDANHMUCCHA.DataValueField = "IDMADM";
            this.drDANHMUCCHA.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            string path = Server.MapPath("\\App_Data\\dbQuanLyBanHang.mdf");
             xulydulieu = new XuLyDuLieu(path);
            if (!IsPostBack) 
            { 
            DANHMUCCHA();
            LOADDANHMUC();
            }
        }
        public void LOADDANHMUC()
        {
            SQL = "select * from tbDANHMUC";
            this.gvDANHMUC.DataSource = xulydulieu.Bangdulieu(SQL);
            this.gvDANHMUC.DataBind();
           

        }     
        protected void btnTHEM_Click(object sender, EventArgs e)
        {           
            String TenDM = txtTENDM.Text;
            Int16 IDPARENT = Convert.ToInt16(this.drDANHMUCCHA.SelectedValue.ToString());
            SqlParameter[] pr = new SqlParameter[2];
            pr[0] = new SqlParameter("@TENDM", TenDM);
            pr[1] = new SqlParameter("@IDPARENT", IDPARENT);
            xulydulieu.Thucthithutuc("PS_THEMMOIDANHMUC", pr);           
            LOADDANHMUC();
           
        }
        protected void gvDANHMUC_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            this.gvDANHMUC.PageIndex = e.NewPageIndex;
            LOADDANHMUC();
        }
        protected void gvDANHMUC_RowEditing(object sender, GridViewEditEventArgs e)
        {
            this.gvDANHMUC.EditIndex = e.NewEditIndex;
            LOADDANHMUC();

            DropDownList drl = (DropDownList)gvDANHMUC.Rows[e.NewEditIndex].FindControl("drMADANHMUCHA");
            SQL = "Select * from tbDANHMUC";
            drl.DataSource = xulydulieu.Bangdulieu(SQL);
            drl.DataTextField = "TENDM";
            drl.DataValueField = "IDMADM";
            drl.DataBind();
        }

        protected void gvDANHMUC_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            Label lbMADM = (Label)gvDANHMUC.Rows[e.RowIndex].FindControl("lbMADM");
            TextBox TENDM = (TextBox)gvDANHMUC.Rows[e.RowIndex].FindControl("txtTENDM");
            DropDownList drl = (DropDownList)gvDANHMUC.Rows[e.RowIndex].FindControl("drMADANHMUCHA");

            SQL = " update tbDANHMUC"
         + " set "
         + " TENDM='" + TENDM.Text + "',"
         + " IDPARENT='" + drl.SelectedValue + "'"
         + " where "
         + " IDMADM='" + lbMADM.Text + "'";
            xulydulieu.ThucthiSQL(SQL);
            LOADDANHMUC();
           
        }
        protected void gvDANHMUC_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            gvDANHMUC.EditIndex = -1;
            LOADDANHMUC();

        }

        protected void gvDANHMUC_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            Label lbMADM = (Label)gvDANHMUC.Rows[e.RowIndex].FindControl("lbMADM");
            SQL = "delete from tbDANHMUC where  IDMADM='" + lbMADM.Text + "'";
            xulydulieu.ThucthiSQL(SQL);
            LOADDANHMUC();
        }


    }
}