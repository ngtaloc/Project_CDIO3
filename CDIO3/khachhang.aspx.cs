using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class khachhang : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Control hienthihome = new Control();
        string page = Request.QueryString.Get("page");
        if (page == "xem")
            hienthihome = LoadControl("UC_Home/XemSanPham.ascx");
        else
            hienthihome = LoadControl("UC_Home/TrangChu.ascx");

        this.Panel1.Controls.Add(hienthihome);
    }
}