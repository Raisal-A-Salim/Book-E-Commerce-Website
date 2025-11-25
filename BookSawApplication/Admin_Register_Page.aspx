<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Page.Master" AutoEventWireup="true" CodeBehind="Admin_Register_Page.aspx.cs" Inherits="BookSawApplication.Admin_Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 549px;
        }
        .auto-style2 {
            width: 161px;
        }
        .auto-style3 {
            width: 549px;
            height: 57px;
        }
        .auto-style4 {
            width: 161px;
            height: 57px;
        }
        .auto-style5 {
            height: 57px;
        }
        .auto-style6 {
            height: 57px;
            width: 134px;
        }
        .auto-style7 {
            width: 134px;
        }
        .auto-style8 {
            height: 130px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
        <tr>
            <td style="text-align:center;" colspan="4" class="auto-style8"><h1>Admin Registration</h1>
            </td>
        </tr>
        <tr>
            <td class="auto-style3"></td>
            <td class="auto-style4" style="padding-bottom:2.3rem;">Name</td>
            <td class="auto-style6">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style5" style="padding-bottom:2.3rem;">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3"></td>
            <td class="auto-style4" style="padding-bottom:2.3rem;">Email</td>
            <td class="auto-style6">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style5" style="padding-bottom:2.3rem;">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox2" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter a valid email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style4" style="padding-bottom:2.3rem;">Phone</td>
            <td class="auto-style6">
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style5" style="padding-bottom:2.3rem;">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox3" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox3" ErrorMessage="Enter a valid number" ValidationExpression="^[6-9]\d{9}$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2" style="padding-bottom:2.3rem;">Username</td>
            <td class="auto-style7">
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
            <td style="padding-bottom:2.3rem;">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox4" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3"></td>
            <td class="auto-style4" style="padding-bottom:2.3rem;">Password</td>
            <td class="auto-style6">
                <asp:TextBox ID="TextBox5" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td class="auto-style5" style="padding-bottom:2.3rem;">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox5" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2" style="padding-bottom:2.3rem;">Confirm Password</td>
            <td class="auto-style7">
                <asp:TextBox ID="TextBox6" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td style="padding-bottom:2.3rem;">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox6" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox5" ControlToValidate="TextBox6" ErrorMessage="Password doesn't match"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style7" style="padding-left:3.8rem;">
                <asp:Button ID="Register_Admin_Button" BackColor="#993333" runat="server" Text="Register" OnClick="Register_Admin_Button_Click" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style7" style="padding-left:3.8rem;">
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        </table>
</asp:Content>