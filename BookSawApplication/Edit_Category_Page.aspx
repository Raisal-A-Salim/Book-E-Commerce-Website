<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Page.Master" AutoEventWireup="true" CodeBehind="Edit_Category_Page.aspx.cs" Inherits="BookSawApplication.Edit_Category_Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .radio-align input[type="radio"] {
            vertical-align: middle;  /* aligns bubble with text */
            margin-right: 5px;       /* space between bubble and text */
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
        .auto-style5 {
            width: 588px;
        }
        .auto-style14 {
            width: 111px;
        }
        .auto-style15 {
            width: 588px;
            height: 56px;
        }
        .auto-style16 {
            width: 111px;
            height: 56px;
        }
        .auto-style17 {
            height: 56px;
        }
        .auto-style18 {
            width: 588px;
            height: 81px;
        }
        .auto-style19 {
            width: 111px;
            height: 81px;
        }
        .auto-style20 {
            height: 81px;
        }
        .auto-style21 {
            height: 188px;
        }
        .auto-style22 {
            left: 0px;
            top: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
        <tr>
            <td style="text-align:center;vertical-align:middle;" class="auto-style21"><h1>Edit Categories</h1>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Panel ID="Panel1" runat="server" Visible="False">
                    <table class="w-100">
                        <tr>
                            <td class="auto-style5">&nbsp;</td>
                            <td class="auto-style14" style="padding-bottom:2.3rem;">Name</td>
                            <td>
                                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style5">&nbsp;</td>
                            <td class="auto-style14">Image</td>
                            <td>
                                <asp:Image ID="Image1" runat="server" Height="200px" Width="200px" />
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style15"></td>
                            <td class="auto-style16" style="padding-bottom:1.25rem;">New Image</td>
                            <td class="auto-style17">
                                <asp:FileUpload ID="FileUpload1" runat="server" CssClass="auto-style22" />
                            </td>
                            <td class="auto-style17"></td>
                        </tr>
                        <tr>
                            <td class="auto-style5">&nbsp;</td>
                            <td class="auto-style14" style="padding-bottom:3.25rem;">Description</td>
                            <td>
                                <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine"></asp:TextBox>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style5">&nbsp;</td>
                            <td class="auto-style14" style="padding-bottom:7.3rem;">Status</td>
                            <td>
                                <asp:RadioButtonList ID="RadioButtonList1" runat="server" CssClass="radio-align" RepeatDirection="Horizontal" Width="137px" EnableTheming="False" Height="17px" CellPadding="0" CellSpacing="0">
                                    <asp:ListItem Value="1">Active</asp:ListItem>
                                    <asp:ListItem Value="0">Inactive</asp:ListItem>
                                </asp:RadioButtonList>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style18"></td>
                            <td class="auto-style19"></td>
                            <td class="auto-style20">
                                <asp:Button ID="Button1" BackColor="#993333" runat="server" Text="Edit" OnClick="Button1_Click" />
                                <asp:Button ID="Button2" BackColor="#993333" runat="server" OnClick="Button2_Click" Text="Cancel" />
                            </td>
                            <td class="auto-style20"></td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td style="padding-left:2rem;padding-right:2rem;">
                <asp:GridView ID="GridView1" runat="server" CssClass="myGrid" AutoGenerateColumns="False" OnSelectedIndexChanging="GridView1_SelectedIndexChanging">
                    <Columns>
                        <asp:CommandField HeaderText="Select to edit category" SelectText="Edit" ShowSelectButton="True" />
                        <asp:BoundField DataField="Cato_ID" HeaderText="Category ID" />
                        <asp:BoundField DataField="Cato_Name" HeaderText="Name" />
                        <asp:ImageField DataImageUrlField="Cato_Image" HeaderText="Image">
                            <ControlStyle Height="100px" Width="100px" />
                        </asp:ImageField>
                        <asp:BoundField DataField="Cato_Description" HeaderText="Description" />
                        <asp:BoundField DataField="Cato_Status" HeaderText="Status" />
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
        </table>
</asp:Content>
