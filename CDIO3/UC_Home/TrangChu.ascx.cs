using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using CDIO3.App_code;

public partial class UC_Home_TrangChu : System.Web.UI.UserControl
{
    XLDL xldl;
    protected void Page_Load(object sender, EventArgs e)
    {
        xldl = new XLDL();
        string madm = Request.QueryString.Get("madm");
        string tim = Request.QueryString.Get("tim");
        int gmin = 0;
        gmin = Convert.ToInt32(Request.QueryString.Get("Gmin"));
        int gmax = 0;
        gmax = Convert.ToInt32(Request.QueryString.Get("Gmax"));
        DataTable tb = new DataTable();

        if (madm != null)
        {
            tb = xldl.LayBang("select* from sanpham , khuyenmai where madm='" + madm + "'");
        }
        else
        if (tim != null)
        {
            tb = xldl.LayBang("select* from sanpham , khuyenmai where masp like '%" + tim + "&' OR tensanpham like '%" + tim + "%'");
        }
        else
        {
            tb = xldl.LayBang("select* from sanpham , khuyenmai");
        }
        if (gmax != 0 || gmin != 0)
        {
            tb.AcceptChanges();
            foreach (DataRow row in tb.Rows)
            {
                if (int.Parse(row["gia"].ToString()) < gmin)
                    row.Delete();
                else
                if (gmax != 0)
                    if (int.Parse(row["gia"].ToString()) > gmax)
                        row.Delete();
            }
            tb.AcceptChanges();
        }
        DataList_home.DataSource = tb;
        DataList_home.DataBind();
    }
}