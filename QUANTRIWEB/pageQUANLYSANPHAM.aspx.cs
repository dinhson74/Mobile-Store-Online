using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using webQuanLyBanHang4._0.App_Code;

namespace webQuanLyBanHang4._0.QUANTRIWEB
{
    public partial class pageQUANLYSANPHAM : System.Web.UI.Page
    {
        XuLyDuLieu xulydulieu;
        string SQL;

        public String UploadFile()
        {
            String filename = null;
            if (uploadanh.HasFile)
            {
                String path = Server.MapPath("\\IMAGES\\");
                filename = uploadanh.PostedFile.FileName;
                uploadanh.PostedFile.SaveAs(path + filename);
            }
            return "IMAGES//"+filename;
        }
        public void DANHMUCCHA()
        {
            SQL = "Select * from tbDANHMUC";
            this.drldm.DataSource = xulydulieu.Bangdulieu(SQL);
            this.drldm.DataTextField = "TENDM";
            this.drldm.DataValueField = "IDMADM";
            this.drldm.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            string path = Server.MapPath("\\App_Data\\dbQuanLyBanHang.mdf");
            xulydulieu = new XuLyDuLieu(path);
            if (!IsPostBack)
            {
                
                DANHMUCCHA();      
                LOADSANPHAM();
            }
        }
        public void LOADSANPHAM()
        {
            SQL = "Select *  from tbSANPHAM";
            this.gvsanpham.DataSource = xulydulieu.Bangdulieu(SQL);
            this.gvsanpham.DataBind();
        }

        protected void gvsanpham_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            this.gvsanpham.PageIndex = e.NewPageIndex;
            LOADSANPHAM();
        }

        protected void gvsanpham_RowEditing(object sender, GridViewEditEventArgs e)
        {
            this.gvsanpham.EditIndex = e.NewEditIndex;
            LOADSANPHAM();

            DropDownList drl = (DropDownList)gvsanpham.Rows[e.NewEditIndex].FindControl("drlMADM");
            SQL = "Select * from tbDANHMUC";
            drl.DataSource = xulydulieu.Bangdulieu(SQL);
            drl.DataTextField = "TENDM";
            drl.DataValueField = "IDMADM";
            drl.DataBind();
        }
        protected void gvsanpham_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            gvsanpham.EditIndex = -1;
            LOADSANPHAM();
        }

        protected void gvsanpham_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            Label lbMASP = (Label)gvsanpham.Rows[e.RowIndex].FindControl("lbMASP");
            TextBox TENSP = (TextBox)gvsanpham.Rows[e.RowIndex].FindControl("txtTENSP");
            TextBox SOLUONG = (TextBox)gvsanpham.Rows[e.RowIndex].FindControl("txtSOLUONG");
            TextBox DONGIA = (TextBox)gvsanpham.Rows[e.RowIndex].FindControl("txtDONGIA");
            TextBox HINHANH = (TextBox)gvsanpham.Rows[e.RowIndex].FindControl("txtHINHANH");
            TextBox MOTA = (TextBox)gvsanpham.Rows[e.RowIndex].FindControl("txtMOTA");
            DropDownList drl = (DropDownList)gvsanpham.Rows[e.RowIndex].FindControl("drlMADM");

            SQL = " update tbSANPHAM"
         + " set "
         + " TENSP='" + TENSP.Text + "',"
         + " SOLUONG='" +SOLUONG.Text + "',"
         + "DONGIA='" + DONGIA.Text + "',"
         + "HINHANH='" + HINHANH.Text + "',"
         + " MOTA='" + MOTA.Text + "',"
         + " IDMADM='" + drl.SelectedValue + "'"
         + " where "
         + " IDMASP='" + lbMASP.Text + "'";
            xulydulieu.ThucthiSQL(SQL);
            gvsanpham.EditIndex = -1;
            LOADSANPHAM();

        }

        protected void btnthemmoi_Click(object sender, EventArgs e)
        {
            String file =UploadFile();
            String TenSP = txttensp.Text;
            String Soluong = txtsoluong.Text;
            String Dongia = txtdongia.Text;
            String Mota = txtmota.Text;
            Int16 IDmadm = Convert.ToInt16(this.drldm.SelectedValue.ToString());
            SqlParameter[] pr = new SqlParameter[6];
            pr[0] = new SqlParameter("@TENSP",TenSP);
            pr[1] = new SqlParameter("@SOLUONG",Soluong);
            pr[2] = new SqlParameter("@DONGIA", Dongia);
            pr[3] = new SqlParameter("@HINHANH", file);
            pr[4] = new SqlParameter("@MOTA", Mota);
            pr[5] = new SqlParameter("@IDMADM",IDmadm);
            xulydulieu.Thucthithutuc("PS_THEMMOISANPHAM", pr);           
            LOADSANPHAM();


        }

        protected void gvsanpham_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            Label lbMASP = (Label)gvsanpham.Rows[e.RowIndex].FindControl("lbMASP");
            SQL = "delete from tbSANPHAM where  IDMASP='" + lbMASP.Text + "'";
            xulydulieu.ThucthiSQL(SQL);
            LOADSANPHAM();
        }

       
    }
}