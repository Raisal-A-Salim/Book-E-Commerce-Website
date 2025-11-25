<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Page.Master" AutoEventWireup="true" CodeBehind="Add_To_Cart_Page.aspx.cs" Inherits="BookSawApplication.Add_To_Cart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 310px;
        }
        .auto-style3 {
            left: 0px;
            top: -43px;
        }
        .auto-style4 {
            width: 391px;
        }
        </style>
    <table class="w-100">
        <tr>
    <td class="auto-style4">&nbsp;</td>
    <td class="auto-style1">&nbsp;</td>
    <td>
        &nbsp;</td>
    <td>&nbsp;</td>
</tr>
        <tr>
    <td class="auto-style4">&nbsp;</td>
    <td class="auto-style1">&nbsp;</td>
    <td>
        &nbsp;</td>
    <td>&nbsp;</td>
</tr>
        <tr>
    <td class="auto-style4">&nbsp;</td>
    <td class="auto-style1" rowspan="5" style="padding-bottom:80px">
        <asp:Image ID="Image1" runat="server" Height="300px" Width="300px" />
            </td>
    <td class="fs-1 text-dark" style="transform: translateY(10px);">
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </td>
    <td>&nbsp;</td>
</tr>
        <tr>
    <td class="auto-style4">&nbsp;</td>
    <td class="text-dark fs-4" style="transform: translateY(-10px);">
        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
    </td>
    <td>&nbsp;</td>
</tr>
        <tr>
    <td class="auto-style4">&nbsp;</td>
    <td class="text-dark" style="transform: translateY(-10px);">
        <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
            </td>
    <td>&nbsp;</td>
</tr>
<tr>
    <td class="auto-style4">&nbsp;</td>
    <td style="transform: translateY(-10px);">
        <div style="display: flex; align-items: center; gap: 0px;">
            <asp:Button  ID="Button1" runat="server" style="transform: translateY(-7px);" Text="-" CssClass="btn btn-secondary" OnClientClick="decreaseQty(); return false;" Height="47px" BackColor="#009933" />
            <asp:TextBox ID="TextBox1" runat="server" Text="1" Width="55px" style="text-align:center;border-radius:0px;" Height="47px" />
            <asp:Button ID="Button2" runat="server" style="transform: translateY(-7px); left: 0px; top: 0px;" Text="+" CssClass="btn btn-secondary" OnClientClick="increaseQty(); return false;" Height="47px" BackColor="#009933" />
        </div>
    </td>
    <td>&nbsp;</td>
</tr>

<script type="text/javascript">
    function increaseQty() {
        var qtyBox = document.getElementById('<%= TextBox1.ClientID %>');
        var value = parseInt(qtyBox.value) || 0;
        qtyBox.value = value + 1;
    }

    function decreaseQty() {
        var qtyBox = document.getElementById('<%= TextBox1.ClientID %>');
        var value = parseInt(qtyBox.value) || 0;
        if (value > 1) qtyBox.value = value - 1;
        else qtyBox.value = 1;
    }
</script>

<tr>
    <td class="auto-style4">&nbsp;</td>
    <td style="transform: translateY(-10px);">
        <asp:Button ID="Button3" runat="server" BackColor="#FF9900" OnClick="Button3_Click" Text="Add To Cart" CssClass="auto-style3" />
        <asp:Button ID="Button4" runat="server" BackColor="#FF6600" Text="View Cart" CssClass="auto-style3" OnClick="Button4_Click" />
    </td>
    <td>&nbsp;</td>
</tr>
    </table>
</asp:Content>