<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Page.Master" AutoEventWireup="true" CodeBehind="Edit_Products_Page.aspx.cs" Inherits="BookSawApplication.Edit_Products_Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
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

        .auto-style4 {
            width: 550px;
        }
        .auto-style11 {
            width: 156px;
        }
        .auto-style12 {
            width: 440px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
        <tr>
            <td colspan="4" style="text-align:center;">
                <h1>Edit Products</h1>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style11" style="padding-bottom:2.3rem;">Select category</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="4">
                <asp:Panel ID="Panel1" runat="server" Visible="False">
                    <table class="w-100">
                        <tr>
                            <td class="auto-style4">&nbsp;</td>
                            <td class="auto-style11" style="padding-bottom:2.3rem;">Name</td>
                            <td class="auto-style12">
                                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style4">&nbsp;</td>
                            <td class="auto-style11">Image</td>
                            <td class="auto-style12">
                                <asp:Image ID="Image1" runat="server" Height="200px" Width="200px" />
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style4">&nbsp;</td>
                            <td class="auto-style11" style="padding-bottom:1.25rem;">Change Image</td>
                            <td class="auto-style12">
                                <asp:FileUpload ID="FileUpload1" runat="server" />
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style4">&nbsp;</td>
                            <td class="auto-style11" style="padding-bottom:3.25rem;">Description</td>
                            <td class="auto-style12">
                                <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine"></asp:TextBox>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style4">&nbsp;</td>
                            <td class="auto-style11" style="padding-bottom:2.3rem;">Change Category</td>
                            <td class="auto-style12">
                                <asp:DropDownList ID="DropDownList2" runat="server">
                                </asp:DropDownList>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style4">&nbsp;</td>
                            <td class="auto-style11" style="padding-bottom:2.3rem;">Price</td>
                            <td class="auto-style12">
                                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style4">&nbsp;</td>
                            <td class="auto-style11" style="padding-bottom:2.3rem;">Stock</td>
                            <td class="auto-style12">
                                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style4">&nbsp;</td>
                            <td class="auto-style11" style="padding-bottom:6.8rem;">Status</td>
                            <td class="auto-style12">
                                <asp:RadioButtonList ID="RadioButtonList1" runat="server" Height="51px" RepeatDirection="Horizontal" Width="47px">
                                    <asp:ListItem Value="1">Available</asp:ListItem>
                                    <asp:ListItem Value="0">Unavailable</asp:ListItem>
                                </asp:RadioButtonList>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style4">&nbsp;</td>
                            <td class="auto-style11">&nbsp;</td>
                            <td class="auto-style12">
                                <asp:Button ID="Button1" BackColor="#993333" runat="server" Text="Update" OnClick="Button1_Click" />
                                <asp:Button ID="Button2" BackColor="#993333" runat="server" Text="Cancel" OnClick="Button2_Click" />
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td colspan="4" style="padding-left:2rem;padding-right:2rem;">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="myGrid" OnSelectedIndexChanging="GridView1_SelectedIndexChanging">
                    <Columns>
                        <asp:CommandField HeaderText="Select to edit product" SelectText="Edit" ShowSelectButton="True" />
                        <asp:BoundField DataField="Pdt_ID" HeaderText="Product ID" />
                        <asp:BoundField DataField="Pdt_Name" HeaderText="Product Name" />
                        <asp:ImageField DataImageUrlField="Pdt_Image" HeaderText="Image">
                            <ControlStyle Height="100px" Width="100px" />
                        </asp:ImageField>
                        <asp:BoundField DataField="Pdt_Description" HeaderText="Description" />
                        <asp:BoundField DataField="Price" HeaderText="Price" />
                        <asp:BoundField DataField="Stock" HeaderText="Stock" />
                        <asp:BoundField DataField="Pdt_Status" HeaderText="Status" />
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
        </table>
</asp:Content>
