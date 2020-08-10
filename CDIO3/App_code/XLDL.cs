﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace CDIO3.App_code
{
    public class XLDL
    {
        SqlConnection con;

        public XLDL()
        {
            con = new SqlConnection();
           // con.ConnectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;Initial Catalog=dbCDIO;Integrated Security=True";
            con.ConnectionString = @"Data Source=DESKTOP-4UPPHLQ\SQLEXPRESS;Initial Catalog=dbCDIO;Integrated Security=True";
            //quoc
           // con.ConnectionString = @"Data Source=LAPTOP-GBMTFUUC;Initial Catalog=CDIO3;Integrated Security=True";
           //Hau
             //con.ConnectionString = @"Data Source=DESKTOP-LM0C49R\SQLEXPRESS;Initial Catalog=DB_CDIO3;Integrated Security=True";

        }
        public void Mo()
        {
            if (con.State == ConnectionState.Closed)
                con.Open();
        }
        public void Dong()
        {
            if (con.State == ConnectionState.Open)
                con.Close();
        }
        public DataTable LayBang(String sql)
        {
            this.Mo();
            DataTable tb = new DataTable();
            SqlDataAdapter adp = new SqlDataAdapter(sql, con);
            adp.Fill(tb);
            this.Dong();
            return tb;
        }
        public int ThucThiSQL(string sql)
        {
            this.Mo();
            SqlCommand cmd = new SqlCommand(sql, con);
            int k = cmd.ExecuteNonQuery();
            this.Dong();
            return k;
        }
        public object LayGiaTriDon(string sql)
        {
            this.Mo();
            SqlCommand cmd = new SqlCommand(sql, con);
            object value = cmd.ExecuteScalar();
            this.Dong();
            return value;
        }
        public DataSet LayDanhSachBang(string sql, ref DataSet ds)
        {
            ds.Tables.Add(this.LayBang(sql));
            return ds;
        }
        public DataTable LayBangThuTuc(string TenThuTuc, SqlParameter[] pr)
        {
            this.Mo();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = TenThuTuc;
            if (pr != null)
                cmd.Parameters.AddRange(pr);
            SqlDataAdapter adp = new SqlDataAdapter(cmd);
            DataTable tb = new DataTable();
            adp.Fill(tb);
            this.Dong();
            return tb;
        }
        public int ThucThiThuTuc(string TenThuTuc, SqlParameter[] pr)
        {
            this.Mo();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = TenThuTuc;
            if (pr != null)
                cmd.Parameters.AddRange(pr);
            int k = cmd.ExecuteNonQuery();
            this.Dong();
            return k;
        }
    }
}