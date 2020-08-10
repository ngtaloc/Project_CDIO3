using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CDIO3.App_code;

public partial class UC_Home_XemSanPham : System.Web.UI.UserControl
{
    XLDL xldl;
    protected void Page_Load(object sender, EventArgs e)
    {
        xldl = new XLDL();
        string masp = Request.QueryString.Get("masp");
        this.Repeater1.DataSource = xldl.LayBang("select* from sanpham, khuyenmai where masp='" + masp + "'");
        this.Repeater1.DataBind();
    }

    public void btn_mua_Click(object sender, ImageClickEventArgs e)
    {
        
        String masp = Request.QueryString.Get("masp");
        ViewState["slt"] = (int)xldl.LayGiaTriDon("select soluong from sanpham where masp='" + masp + "'");
       

        xldl = new XLDL();
       
        TextBox txtSoluong = new TextBox();
        txtSoluong.Text = "1";

        if (masp != null)
        {
            string sql = "select * ," + txtSoluong.Text + " as SOLUONGmua,HINHANH,GIA," + txtSoluong.Text + " * GIA as THANHTIEN from SANPHAM, khuyenmai where MASP='" + masp + "'";
            DataTable tb = xldl.LayBang(sql);
            GIOHANG cart = null;
            Session.Timeout = 1;
            if (Session["cart"] == null)
                cart = new GIOHANG();
            else
                cart = (GIOHANG)Session["cart"];
            int a = (int)xldl.LayGiaTriDon("select soluong from sanpham where masp='" + masp + "'");
            int b = int.Parse(txtSoluong.Text.ToString()); ;
            int SoLuongTon = a - b;

            if (cart.Additem(tb.Rows[0], SoLuongTon))
            {
                Session["cart"] = cart;
                string path = HttpContext.Current.Request.Url.AbsolutePath;
                Response.Redirect(path + "?page=gh&masp=" + masp);
            }
            else
            {
                Response.Write("<script>");
                Response.Write("alert('Số lượng trong giỏ hàng nhiều hơn trong kho!')");
                Response.Write("</script>");
            }
        }

    }
}