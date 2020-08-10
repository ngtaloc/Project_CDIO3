<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="QLDanhMuc.aspx.cs" Inherits="QLDanhMuc" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <link href="Content/css/QuanLy.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <div class="containerQL">
        <div class="headerr">
       
        <div class="tieude">
            <h2>Quản lý danh mục</h2>
        </div>
        <div class="tim">
            <a> <i style="color:white;" class="fa fa-search"></i>&nbsp <input id="txt_Tim" type="text" placeholder="Tìm Kiếm" style="width:250px;" /> </a>
        </div>
        
        <div class="themsp">
            <a > Thêm danh mục</a>
        </div>
        
        </div>
        <div id="contentQL">
        <asp:DataList ID="DataList1" runat="server" RepeatColumns="4">
            <ItemTemplate>
                <img src="<%# Eval("hinhanh") %>" width="200px"/>
                <br /> <%# Eval("tensanpham") %>
            </ItemTemplate>
        </asp:DataList>
    </div>
    </div>
</asp:Content>

