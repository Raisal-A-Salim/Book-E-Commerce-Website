<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Page.Master" AutoEventWireup="true" CodeBehind="Add_Category_Page.aspx.cs" Inherits="BookSawApplication.Add_Category" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 499px;
        }
        .auto-style2 {
            width: 143px;
        }
        .auto-style3 {
            width: 499px;
            height: 57px;
        }
        .auto-style4 {
            width: 143px;
            height: 57px;
        }
        .auto-style5 {
            height: 57px;
        }
        .auto-style6 {
            width: 499px;
            height: 64px;
        }
        .auto-style7 {
            width: 143px;
            height: 64px;
        }
        .auto-style8 {
            height: 64px;
        }
        .auto-style9 {
            width: 499px;
            height: 80px;
        }
        .auto-style10 {
            width: 143px;
            height: 80px;
        }
        .auto-style11 {
            height: 80px;
        }
    .auto-style12 {
        width: 160px;
        height: 57px;
    }
    .auto-style13 {
        width: 160px;
        height: 80px;
    }
    .auto-style14 {
        width: 160px;
        height: 64px;
    }
    .auto-style15 {
        width: 160px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
        <tr>
            <td colspan="4" style="text-align:center;vertical-align:middle;"><h1>Add Category</h1>
                <h2 class="text-danger"><asp:Label ID="Label1" runat="server" Text="Label1" Visible="False"></asp:Label></h2>
            </td>
        </tr>
        <tr>
            <td class="auto-style3"></td>
            <td class="auto-style4" style="padding-bottom:2.3rem;">Category Name</td>
            <td class="auto-style12">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style5"style="padding-bottom:2.3rem;">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style9"></td>
            <td class="auto-style10" style="padding-bottom:1.25rem;">Image</td>
            <td class="auto-style13">
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
            <td class="auto-style11" style="padding-bottom:1.25rem;">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="FileUpload1" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style6"></td>
            <td class="auto-style7" style="padding-bottom:3.25rem;">Description</td>
            <td class="auto-style14">
                <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine"></asp:TextBox>
            </td>
            <td class="auto-style8" style="padding-bottom:3.25rem;">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox2" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style15" style="padding-left:4.5rem;">
                <asp:Button ID="Add_Category_Button" runat="server" Text="Add" BackColor="#993333" OnClick="Add_Category_Button_Click" />
            </td>
            <td>&nbsp;</td>
        </tr>
        </table>
</asp:Content>
