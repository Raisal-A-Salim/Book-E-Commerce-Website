<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Page.Master" AutoEventWireup="true" CodeBehind="Admin_Home_Page.aspx.cs" Inherits="BookSawApplication.Admin_Home_Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 655px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="Add_Category_Page.aspx" ForeColor="#993333">Add Category</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>
                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="Add_Product_Page.aspx" ForeColor="#993333">Add Product</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>
                <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="Edit_Category_Page.aspx" ForeColor="#993333">Edit Category</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>
                <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="Edit_Products_Page.aspx" ForeColor="#993333">Edit Product</asp:HyperLink>
            </td>
        </tr>
    </table>
</asp:Content>