using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace webQuanLyBanHang4._0.App_Code
{
    public class XuLyDuLieu
    {
        SqlConnection con;
        public XuLyDuLieu(String path)
        {
            con = new SqlConnection();
            con.ConnectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename="+ path+";Integrated Security=True";
        }
        private void Moketnoi()
        {
            if (con.State == ConnectionState.Closed)
                con.Open();
        }
        private void Dongketnoi()
        {
            if (con.State == ConnectionState.Open)
                con.Close();
        }
        public DataTable Bangdulieu(string SQL) //Thuc thi cau lenh SQL 
        {
            DataTable tb = new DataTable();
            this.Moketnoi();
            SqlDataAdapter ADP = new SqlDataAdapter(SQL, con);
            ADP.Fill(tb);
            this.Dongketnoi();
            return tb;
        }
        public void DanhSachBang(ref DataSet ds, string SQL)
        {
            ds.Tables.Add(Bangdulieu(SQL));
        }
        public int ThucthiSQL(string SQL)   
        {
            this.Moketnoi();
            SqlCommand cmd = new SqlCommand(SQL, con);
            int k = cmd.ExecuteNonQuery();
            this.Dongketnoi();
            return k;
        }
        public object Laygiatridon(string SQL)
        {
            this.Moketnoi();
            SqlCommand cmd = new SqlCommand(SQL, con);
            object Giatri = cmd.ExecuteScalar();
            this.Dongketnoi();
            return Giatri;
        }

        public DataTable LaybangThuTuc(string Tenthutuc, SqlParameter[] PR)
        {
            this.Moketnoi();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = Tenthutuc;
            if (PR != null)
            {
                cmd.Parameters.AddRange(PR);
            }
            SqlDataAdapter ADP = new SqlDataAdapter(cmd);
            DataTable tb = new DataTable();
            ADP.Fill(tb);
            this.Dongketnoi();
            return tb;
        }
        public int Thucthithutuc(string Tenthutuc, SqlParameter[] PR)
        {
            this.Moketnoi();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = Tenthutuc;
            cmd.Connection = con;
            if (PR != null)
            {
                cmd.Parameters.AddRange(PR);
            }
            int k = cmd.ExecuteNonQuery();
            this.Dongketnoi();
            return k;
        }
    }
}