using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using CDIO3.App_code;

public partial class _Default : System.Web.UI.Page
{
    XLDL xldl;
    protected void Page_Load(object sender, EventArgs e)
    {
        Control hienthihome = new Control();
        string page =Request.QueryString.Get("page");
        if(page=="xem")
            hienthihome = LoadControl("UC_Home/XemSanPham.ascx");
        else
            if(page=="gh")
            hienthihome = LoadControl("UC_Home/GioHang.ascx");
        else
        hienthihome = LoadControl("UC_Home/TrangChu.ascx");
        
        this.Panel1.Controls.Add(hienthihome);
    }
}