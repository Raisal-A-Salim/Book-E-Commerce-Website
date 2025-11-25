<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Page.Master" AutoEventWireup="true" CodeBehind="View_Cart_Page.aspx.cs" Inherits="BookSawApplication.View_Cart_Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 613px;
        }
        .auto-style2 {
            width: 346px;
        }
        .myGrid {
            border-collapse: collapse;
            width: 100%;
            border: 2px solid black; /* outer table border */
        }

        /* All cells default 1px border */
        .myGrid td, .myGrid th {
            border: 1px solid black;
            padding: 5px;
        }

        /* Entire first row 2px border */
        .myGrid tr:first-child td,
        .myGrid tr:first-child th {
            border: 2px solid black;
        }

        /* Vertical borders between all columns */
        .myGrid td + td,
        .myGrid th + th {
            border-left: 2px solid black;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
        <tr>
            <td colspan="3" style="text-align:center;"><h1>Cart</h1></td>
        </tr>
        <tr>
            <td colspan="3" style="padding-left:2rem;padding-right:2rem;">
                <asp:GridView CssClass="myGrid" ID="GridView1" runat="server" AutoGenerateColumns="False">
                    <Columns>
                        <asp:TemplateField HeaderText="S.No">
                            <ItemTemplate>
                                <%# Container.DataItemIndex + 1 %>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="Pdt_Name" HeaderText="Product Name" />
                        <asp:ImageField DataImageUrlField="Pdt_Image" HeaderText="Image">
                            <ControlStyle Height="100px" Width="100px" />
                        </asp:ImageField>
                        <asp:BoundField DataField="Quantity" HeaderText="Quantity" />
                        <asp:BoundField DataField="Subtotal" HeaderText="Subtotal" />
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        </table>
</asp:Content>