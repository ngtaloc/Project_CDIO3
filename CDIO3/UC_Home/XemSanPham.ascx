<%@ Control Language="C#" AutoEventWireup="true" CodeFile="XemSanPham.ascx.cs" Inherits="UC_Home_XemSanPham" %>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"/>
<style>
    #ten{
        width:100%;
        border-bottom:1px solid gainsboro;        
        margin-top:1em;
    }
    #hinh{
        float:left;
        padding:1em 1em;
    }
    #gia{
        float:left;
        padding:1em 1em;
    }
    #km{
        border:1px solid gainsboro;
        border-radius: 4px 4px 4px 4px;
        padding:1em 1em;
    }
    #thongsokt{
        float:left;
        font-size: 14px;
        margin-left:2em;
        margin-top:1em;
        
    }
    .viewparameterfull {
        display: block;
        width: 100%;
        padding: 6px 0;
        margin: 10px 0 0;
        cursor: pointer;
        text-align: center;
        font-size: 14px;
        background-color: #288ad6;
        color: #fff;
        border: 1px solid #288ad6;
        border-radius: 4px;
    }
    .viewparameterfull:hover{
        background-color:#fff;
        color: #288ad6;
    }
</style>
<asp:Repeater ID="Repeater1" runat="server">
    <ItemTemplate>

        <div id="ten" >
            <h2><%# Eval("tensanpham") %></h2>
        </div>
        <div id="hinh">
            <img alt="" src="<%# Eval("hinhanh") %>\home.jpg" width="400" height="460"/>
        </div>
        <div id="gia">
            <h2 style="color:red; font-weight:bold;"><%# Eval("gia") %>đ</h2>
            <div id="km">
                <h4 style="font-weight:bold;">Khuyến mãi: <%# Eval("Tenkhuyenmai") %></h4>
                <i class="fa fa-check-circle" style="color:green;"></i>&nbsp 
                <a style="margin-left:1em; text-decoration:none;"> <%# Eval("Noidungkhuyenmai") %></a>               
            </div>
            <br />
            <asp:ImageButton ID="btn_mua" runat="server" ImageUrl="~/DataIMG/mua_ngay_button.gif" OnClick="btn_mua_Click" />
        </div>
        <div id="thongsokt">
            <table style="width: 100%; line-height:50px;">
                <tr style="border-bottom:1px solid gainsboro;" >
                    <th>Thông số kỹ thuật</th>
                </tr>
                <tr style="border-bottom:1px solid gainsboro;">
                    <td>Màn hình: </td>
                    <td><%# Eval("manhinh") %></td>                    
                </tr >
                <tr style="border-bottom:1px solid gainsboro;">
                    <td>Hệ diều hành: </td>
                    <td><%# Eval("hedieuhanh") %></td>                    
                </tr>
                <tr style="border-bottom:1px solid gainsboro;">
                    <td>Camera:</td>
                    <td><%# Eval("camera") %></td>                    
                </tr >
                <tr style="border-bottom:1px solid gainsboro;">
                    <td>CPU: </td>
                    <td><%# Eval("chipset") %></td>                    
                </tr>
                <tr style="border-bottom:1px solid gainsboro;">
                    <td>RAM: </td>
                    <td><%# Eval("ram") %></td>                    
                </tr>
                <tr style="border-bottom:1px solid gainsboro;">
                    <td>Bộ nhơ trong: </td>
                    <td><%# Eval("bonhotrong") %></td>                    
                </tr>
                <tr >
                    <td>Dung lượng pin: </td>
                    <td><%# Eval("pin") %></td>                    
                </tr>
               
            </table>
             <asp:Button ID="Button1" runat="server" CssClass="viewparameterfull" Text="Xem cấu hình chi tiết" />
        </div>
    </ItemTemplate>
</asp:Repeater>
