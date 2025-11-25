<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Page.Master" AutoEventWireup="true" CodeBehind="User_Home_Page.aspx.cs" Inherits="BookSawApplication.User_Home_Page" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
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
            width: 220px; /* keeps uniform size */
            text-align: center;
        }

        .productCard:hover {
            transform: translateY(-5px);
            box-shadow: 0 6px 15px rgba(0,0,0,0.2);
            cursor: pointer;
        }

        .productImage {
            padding-right:10px;
        }

        .productName {
            font-size: 18px;
            font-weight: bold;
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

    <table class="w-100">
        <tr>
            <td colspan="4">
                <asp:DataList ID="DataList1" runat="server" 
                              RepeatColumns="5" 
                              HorizontalAlign="Center" 
                              RepeatDirection="Horizontal">
                    <ItemTemplate>
                        <div class="productCard">
                            <asp:ImageButton ID="ImageButton1" runat="server" 
                                CommandArgument='<%# Eval("Cato_ID") %>' 
                                Height="200px" Width="200px" 
                                CssClass="productImage"
                                ImageUrl='<%# Eval("Cato_Image") %>' 
                                OnCommand="ImageButton1_Command" />
                            <div style="height:100px">
                                <asp:Label ID="Label1" runat="server" 
                                    Text='<%# Eval("Cato_Name") %>' 
                                    CssClass="productName"></asp:Label>
                                <asp:Label ID="Label2" runat="server" 
                                    Text='<%# Eval("Cato_Description") %>' 
                                    CssClass="productDesc"></asp:Label>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:DataList>
            </td>
        </tr>
    </table>
</asp:Content>
