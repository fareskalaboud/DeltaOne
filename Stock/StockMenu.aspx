﻿<%@ Page Language="VB" AutoEventWireup="false" CodeFile="StockMenu.aspx.vb" Inherits="Purchase_Menu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .auto-style1 {
            width: 100%;
        }

        
        .auto-style2 {
            height: 32px;
            background-color: #663300;
        }
        
        .auto-style3 {
            height: 96px;
        }
    </style>
</head>
<body style="background-color:#f8f2cf">
    <form id="form1" runat="server">
    <div>
    
    <div>
    
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2" style="text-align: center; background-color: #663300;">

            <table class="auto-style1">
                <tr>
                    <td class="auto-style2" style="text-align: center; background-color: #663300;">
                        <asp:Label ID="Label11" runat="server" Font-Size="XX-Small"></asp:Label>
                        <br />
                        <asp:Button ID="HomeButton" runat="server" BackColor="#F8F2CF" Font-Names="Gill Sans MT" Font-Size="Medium" Text="Home" Width="100px" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="ClientsButton" runat="server" BackColor="#F8F2CF" Font-Names="Gill Sans MT" Font-Size="Medium" Text="Clients" Width="100px" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="SuppliersButton" runat="server" BackColor="#F8F2CF" Font-Names="Gill Sans MT" Font-Size="Medium" Text="Suppliers" Width="100px" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="AccountsButton" runat="server" BackColor="#F8F2CF" Font-Names="Gill Sans MT" Font-Size="Medium" Text="Accounts" Width="100px" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="SalesButton" runat="server" BackColor="#F8F2CF" Font-Names="Gill Sans MT" Font-Size="Medium" Text="Sales" Width="100px" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="PurchasesButton" runat="server" BackColor="#F8F2CF" Font-Names="Gill Sans MT" Font-Size="Medium" Text="Purchases" Width="100px" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="StocksButton" runat="server" BackColor="#F8F2CF" Font-Names="Gill Sans MT" Font-Size="Medium" Text="Stocks" Width="100px" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="SignOutButton" runat="server" BackColor="#F8F2CF" Font-Names="Gill Sans MT" Font-Size="Medium" Text="Sign Out" Width="100px" />
                        <br />
                        <asp:Label ID="Label12" runat="server" Font-Size="XX-Small"></asp:Label>
                    </td>
                </tr>
                </table>
                    </td>
                </tr>
                </table>
    
    </div>
        <table class="auto-style1">
            <tr>
                <td>
    
        <asp:Label ID="Label1" runat="server" Font-Size="50pt" Text="Stocks Menu" Font-Names="Gill Sans MT" ForeColor="#663300"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                </td>
            </tr>
            <tr>
                <td class="auto-style3" style="text-align: center">
    
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    <table class="auto-style1">
                        <tr>
                            <td>&nbsp;</td>
                            <td>
    
                    <asp:HyperLink ID="HyperLink1" runat="server" ImageUrl="~/Images/AddSale.png" NavigateUrl="~/Stock/AddItem.aspx">HyperLink</asp:HyperLink>
                            </td>
                            <td>
                    <asp:HyperLink ID="HyperLink2" runat="server" ImageUrl="~/Images/Sub-Menu/Statistics.png" NavigateUrl="~/Stock/StockStatistics.aspx">HyperLink</asp:HyperLink>
                            </td>
                            <td>
                    <asp:HyperLink ID="HyperLink3" runat="server" ImageUrl="~/Images/Sub-Menu/List.png" NavigateUrl="~/Stock/StockList.aspx">HyperLink</asp:HyperLink>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>
                    <asp:Label ID="Label17" runat="server" Font-Bold="True" Font-Names="Gill Sans MT" ForeColor="#663300" Text="Add an Item"></asp:Label>
                            </td>
                            <td>
                    <asp:Label ID="Label18" runat="server" Font-Bold="True" Font-Names="Gill Sans MT" ForeColor="#663300" Text="Stock Statistics"></asp:Label>
                            </td>
                            <td>
                    <asp:Label ID="Label19" runat="server" Font-Bold="True" Font-Names="Gill Sans MT" ForeColor="#663300" Text="List of Items"></asp:Label>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                    <br />
                    <br />
                    <br />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
