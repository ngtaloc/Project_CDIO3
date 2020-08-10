<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="TaiKhoan.aspx.cs" Inherits="TaiKhoan" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="Content/css/TaiKhoan.css" rel="stylesheet" />
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"/>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <div class="containerQL">
    <div class="headerr">
        <div class="themtaikhoan">
                <a href="TaiKhoan.aspx?page=them_tk">
                        Thêm
                </a>
        </div>
        <div class="themtaikhoan">
            <a  href="TaiKhoan.aspx?page=khoa_tk" >
                khóa
            </a>
        </div>
        <div class="themtaikhoan">
                <a href="TaiKhoan.aspx?page=capnhat_tk">
                    
                    cập nhật
                </a>
        </div>

        <div class="dropdown" style="text-align:center;">
             <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
 <asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
            <asp:ImageButton  ID="ImageButton1" runat="server" type="button" OnClientClick="Function()" CssClass="dropbtn" ImageUrl="~/Content/images/user.png" />
                         <div id="myDropdown" class="dropdown-content">
                            <a href="#">quản lý thông tin cá nhân </a>
                        
                            <a href="Default.aspx">đăng xuất</a>
                        </div>
                    </ContentTemplate>
    </asp:UpdatePanel>
        

    </div>
    </div>
    <div id="contentQL">
        <asp:Panel ID="Panel1" runat="server"></asp:Panel>
    </div>
     <script>
         window.onscroll = function () { myFunction() };

         var navbar = document.getElementById("navbar");
         var sticky = navbar.offsetTop;

         function myFunction() {
             if (window.pageYOffset >= sticky) {
                 navbar.classList.add("sticky")
             } else {
                 navbar.classList.remove("sticky");
             }
         }

         /* When the user clicks on the button, 
         toggle between hiding and showing the dropdown content */
         function Function() {
             document.getElementById("myDropdown").classList.toggle("show");
         }

         // Close the dropdown if the user clicks outside of it
         window.onclick = function (event) {
             if (!event.target.matches('.dropbtn')) {
                 var dropdowns = document.getElementsByClassName("dropdown-content");
                 var i;
                 for (i = 0; i < dropdowns.length; i++) {
                     var openDropdown = dropdowns[i];
                     if (openDropdown.classList.contains('show')) {
                         openDropdown.classList.remove('show');
                     }
                 }
             }
         }
     </script>
</asp:Content>

