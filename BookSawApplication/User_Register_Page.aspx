<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Page.Master" AutoEventWireup="true" CodeBehind="User_Register_Page.aspx.cs" Inherits="BookSawApplication.User_Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 56px;
        }
        .auto-style2 {
            height: 57px;
        }
        .auto-style3 {
            width: 516px;
        }
        .auto-style4 {
            height: 57px;
            width: 516px;
        }
        .auto-style5 {
            height: 56px;
            width: 516px;
        }
        .auto-style6 {
            width: 161px;
        }
        .auto-style7 {
            height: 57px;
            width: 161px;
        }
        .auto-style9 {
            width: 142px;
        }
        .auto-style10 {
            height: 57px;
            width: 142px;
        }
        .auto-style11 {
            height: 56px;
            width: 142px;
        }
        .auto-style12 {
            height: 110px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
        <tr>
            <td style="text-align:center;vertical-align:middle;" colspan="4" class="auto-style12"><h1>User Registration</h1>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style6" style="padding-bottom:2.3rem;">Name</td>
            <td class="auto-style9">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td style="padding-bottom:2.3rem;">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style7" style="padding-bottom:2.3rem;">Age</td>
            <td class="auto-style10">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style2" style="padding-bottom:2.3rem;">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style9" style="padding-bottom:2.3rem;">Email</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
            <td style="padding-bottom:2.3rem;">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox3" ErrorMessage="Enter a valid email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style9" style="padding-bottom:2.3rem;">Phone</td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
            <td style="padding-bottom:2.3rem;">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox4" ErrorMessage="Enter a valid number" ValidationExpression="^[6-9]\d{9}$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style5"></td>
            <td class="auto-style11" style="padding-bottom:2.3rem;">State</td>
            <td class="auto-style1">
                <asp:DropDownList Width="216px" ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
            <td class="auto-style1" style="padding-bottom:2.3rem;">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="DropDownList1" InitialValue="0" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style9" style="padding-bottom:2.3rem;">District</td>
            <td>
                <asp:DropDownList ID="DropDownList2" runat="server">
                </asp:DropDownList>
            </td>
            <td style="padding-bottom:2.3rem;">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="DropDownList2" InitialValue="0" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style9" style="padding-bottom:2.3rem;">Username</td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            </td>
            <td style="padding-bottom:2.3rem;">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox5" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style9" style="padding-bottom:2.3rem;">Password</td>
            <td>
                <asp:TextBox ID="TextBox6" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td style="padding-bottom:2.3rem;">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox6" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style9" style="padding-bottom:2.3rem;">Confirm Password</td>
            <td>
                <asp:TextBox ID="TextBox7" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td style="padding-bottom:2.3rem;">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBox7" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox6" ControlToValidate="TextBox7" ErrorMessage="Passwords don't match"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style9">&nbsp;</td>
            <td style="padding-left:3.8rem;">
                <asp:Button ID="Register_User_Button" BackColor="#993333" runat="server" Text="Register" OnClick="Register_User_Button_Click" />
            </td>
            <td></td>
        </tr>
        </table>
</asp:Content>
