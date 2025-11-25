<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Page.Master" AutoEventWireup="true" CodeBehind="Add_Product_Page.aspx.cs" Inherits="BookSawApplication.Add_Product" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 130px;
        }
        .auto-style2 {
            height: 56px;
        }
        .auto-style3 {
            height: 56px;
            width: 529px;
        }
        .auto-style4 {
            width: 529px;
        }
        .auto-style5 {
            height: 56px;
            width: 133px;
        }
        .auto-style6 {
            width: 133px;
        }
        .auto-style7 {
            height: 56px;
            width: 157px;
        }
        .auto-style8 {
            width: 157px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
        <tr>
            <td colspan="4" style="text-align:center;vertical-align:middle;" class="auto-style1"><h1>Add Product</h1>
            </td>
        </tr>
        <tr>
            <td class="auto-style3"></td>
            <td class="auto-style5" style="padding-bottom:2.3rem;">Category</td>
            <td class="auto-style7">
                <asp:DropDownList ID="DropDownList1" runat="server">
                </asp:DropDownList>
            </td>
            <td class="auto-style2" style="padding-bottom:2.3rem;">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="DropDownList1" InitialValue="0" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style6" style="padding-bottom:2.3rem;">Product Name</td>
            <td class="auto-style8">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td style="padding-bottom:2.3rem;">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox1" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style6" style="padding-bottom:1.25rem;">Image</td>
            <td class="auto-style8">
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
            <td style="padding-bottom:1.25rem;">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="FileUpload1" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style6" style="padding-bottom:3.25rem;">Description</td>
            <td class="auto-style8">
                <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine"></asp:TextBox>
            </td>
            <td style="padding-bottom:3.25rem;">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox2" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style6" style="padding-bottom:2.3rem;">Price</td>
            <td class="auto-style8">
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
            <td style="padding-bottom:2.3rem;">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox3" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style6" style="padding-bottom:2.3rem;">Stock Left</td>
            <td class="auto-style8">
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
            <td style="padding-bottom:2.3rem;">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox4" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style8" style="padding-left:4.5rem;">
                <asp:Button ID="Add_Product_Button" runat="server" Text="Add" OnClick="Add_Product_Button_Click" BackColor="#993333"/>
            </td>
            <td>&nbsp;</td>
        </tr>
        </table>
</asp:Content>
