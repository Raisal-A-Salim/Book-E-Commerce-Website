<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Page.Master" AutoEventWireup="true" CodeBehind="Products_Per_Category.aspx.cs" Inherits="BookSawApplication.Products_Per_Category" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        body {
            background-color: white;
        }

        .productCard {
            background-color: #fff;
            border: 1px solid #ddd;
            border-radius: 10px;
            padding: 15px;
            margin: 10px;
            box-shadow: 0 2px 6px rgba(0,0,0,0.1);
            transition: transform 0.2s ease, box-shadow 0.2s ease;
            width: 220px;
            text-align: center;
        }

        .productCard:hover {
            transform: translateY(-5px);
            box-shadow: 0 6px 15px rgba(0,0,0,0.2);
            cursor: pointer;
        }

        .productImage {
            padding-right:10px;
            display: block;   /* ensures it takes full row */
            margin: 0 auto;   /* centers horizontally */
        }

        .productPrice {
            font-size: 16px;
            font-weight: bold;
            color: green;
            margin-top: 10px;
            display: block;
        }

        .productDesc {
            font-size: 14px;
            color: #555;
            display: block;
            margin-top: 5px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
        <tr>
            <td colspan="4">
                <asp:DataList ID="DataList2" runat="server" 
                              HorizontalAlign="Center" 
                              RepeatColumns="5" 
                              RepeatDirection="Horizontal">
                    <ItemTemplate>
                        <div class="productCard">
                            <asp:ImageButton ID="ImageButton2" runat="server" 
                                CommandArgument='<%# Eval("Pdt_ID") %>' 
                                Height="200px" Width="200px"
                                CssClass="productImage"
                                ImageUrl='<%# Eval("Pdt_Image") %>' 
                                OnCommand="ImageButton2_Command" />
                            <div style="height:100px;">
                                <asp:Label ID="Label3" runat="server" 
                                    Text='<%# "Rs. " + Eval("Price") + "/-" %>' 
                                    CssClass="productPrice"></asp:Label>
                                <asp:Label ID="Label4" runat="server" 
                                    Text='<%# Eval("Pdt_Description") %>' 
                                    CssClass="productDesc"></asp:Label>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:DataList>
            </td>
        </tr>
    </table>
</asp:Content>
