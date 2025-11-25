<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Page.Master" AutoEventWireup="true" CodeBehind="Login_Page.aspx.cs" Inherits="BookSawApplication.Login_Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 565px;
        }
        .auto-style2 {
            width: 99px;
        }
        .auto-style6 {
            width: 565px;
            height: 66px;
        }
        .auto-style7 {
            width: 99px;
            height: 66px;
        }
        .auto-style8 {
            height: 66px;
        }
        .auto-style9 {
            width: 143px;
        }
        .auto-style10 {
            height: 66px;
            width: 143px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style9">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2" style="padding-bottom:2.3rem;">Username</td>
            <td class="auto-style9">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2" style="padding-bottom:2.3rem;">Password</td>
            <td class="auto-style9">
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6"></td>
            <td class="auto-style7"></td>
            <td class="auto-style10" style="padding-left:4.25rem;">
                <asp:Button ID="LoginButton" BackColor="#993333" runat="server" Text="Login" OnClick="LoginButton_Click" />
            </td>
            <td class="auto-style8"></td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style9">
                <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        </table>
</asp:Content>
