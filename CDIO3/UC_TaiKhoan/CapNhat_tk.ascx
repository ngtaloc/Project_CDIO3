<%@ Control Language="C#" AutoEventWireup="true" CodeFile="CapNhat_tk.ascx.cs" Inherits="UC_TaiKhoan_CapNhat_tk" %>
Tên đăng nhập: <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList>
<asp:Repeater ID="Repeater1" runat="server">
    <ItemTemplate>
        <div style="float:left">
            
            
            <a>Mật khẩu:  <%# Eval("") %></a>
            <br />
            <a>Số Điện Thoại: <%# Eval("") %></a>
            <br />

        <div style="float:left">
            <a>Tên Khách Hàng: <%# Eval("") %></a>
            <br />
            <a>
                Địa Chỉ: <%# Eval("") %>
            </a>
            <br />
            <a>
                Email: <%# Eval("") %>
            </a>
            <br />
            <a>
                Giới Tính: <%# Eval("") %>
            </a>
            <br />
            <asp:Button ID="btn_capnhat" runat="server" Text="Cập Nhật" />
        </div><br />
    </ItemTemplate>
</asp:Repeater>
