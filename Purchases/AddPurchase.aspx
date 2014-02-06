<%@ Page Language="VB" AutoEventWireup="false" CodeFile="AddPurchase.aspx.vb" Inherits="AddPurchase" %>

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
        }
    </style>
</head>
<body style="background-color:#f8f2cf">
    <form id="form2" runat="server">

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
        <table class="auto-style1">
            <tr>
                <td>
    
        <asp:Label ID="Label1" runat="server" Font-Size="50pt" Text="Purchases" Font-Names="Gill Sans MT" ForeColor="#663300"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
    
        <br />
        <asp:Label ID="Label8" runat="server" Font-Names="Gill Sans MT" Font-Size="12pt" ForeColor="#663300" Text="Date and Time of Purchase"></asp:Label>
        <br />
                    &nbsp;<asp:Label ID="purchDate" runat="server" Text="Label"></asp:Label>
                    &nbsp;&nbsp;<br />
                    &nbsp;&nbsp;<br />
        <asp:Label ID="Label2" runat="server" Font-Names="Gill Sans MT" Font-Size="12pt" ForeColor="#663300" Text="ItemID"></asp:Label>
        <br />
                    <asp:DropDownList ID="purchItem" runat="server" DataSourceID="SqlDataSource1" DataTextField="ItemID" DataValueField="ItemID" Height="24px" Width="221px">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" SelectCommand="SELECT [ItemID] FROM [Stock]"></asp:SqlDataSource>
                    <br />
        <br />
        <asp:Label ID="Label3" runat="server" Font-Names="Gill Sans MT" Font-Size="12pt" ForeColor="#663300" Text="UserID"></asp:Label>
        &nbsp;
        <br />
        <asp:TextBox ID="purchUser" runat="server" Width="221px" ReadOnly="True"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Status" runat="server" Font-Names="Gill Sans MT" Font-Size="Large" ForeColor="#663300"></asp:Label>
        <asp:Label ID="ErrorLabel" runat="server" Font-Names="Gill Sans MT" Font-Size="Large" ForeColor="Red"></asp:Label>
                    <br />
                    <br />
        <asp:Label ID="Label25" runat="server" Font-Names="Gill Sans MT" Font-Size="12pt" ForeColor="#663300" Text="SupplierID"></asp:Label>
        <br />
                    <asp:DropDownList ID="purchSupplier" runat="server" DataSourceID="SqlDataSource2" DataTextField="SupplierID" DataValueField="SupplierID" Height="24px" Width="221px">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" SelectCommand="SELECT [SupplierID] FROM [Suppliers]"></asp:SqlDataSource>
                    <br />
        <br />
        <asp:Label ID="Label4" runat="server" Font-Names="Gill Sans MT" Font-Size="12pt" ForeColor="#663300" Text="Quantity Bought"></asp:Label>
        <br />
        <asp:TextBox ID="purchQty" runat="server" Width="221px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label5" runat="server" Font-Names="Gill Sans MT" Font-Size="12pt" ForeColor="#663300" Text="Purchase Price"></asp:Label>
        <br />
        <asp:TextBox ID="purchPrice" runat="server" Width="221px"></asp:TextBox>
                    <br />
                    <br />
        <asp:Label ID="Label27" runat="server" Font-Names="Gill Sans MT" Font-Size="12pt" ForeColor="#663300" Text="Status?"></asp:Label>
                    <br />
                    <asp:DropDownList ID="purchStatus" runat="server" Height="24px" Width="221px">
                        <asp:ListItem>Unconfirmed</asp:ListItem>
                        <asp:ListItem>Confirmed</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    <br />
                    &nbsp;&nbsp;<br />
                    <table class="auto-style1">
                        <tr>
                            <td class="auto-style4" style="vertical-align: middle; text-align: center">
                                <asp:Label ID="Label41" runat="server" Font-Names="Gill Sans MT" Font-Size="12pt" ForeColor="#F8F2CF" Text="Save Entry"></asp:Label>
                            </td>
                            <td class="auto-style4" style="vertical-align: middle; text-align: center">
                                <asp:ImageButton ID="AddEntry" runat="server" Height="40px" ImageUrl="~/Images/Form Buttons/Add New.png" Width="40px" />
                            </td>
                            <td class="auto-style4" style="vertical-align: middle; text-align: center">
                                <asp:Label ID="Label39" runat="server" Font-Names="Gill Sans MT" Font-Size="12pt" ForeColor="#F8F2CF" Text="Save Entry"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label29" runat="server" Font-Names="Gill Sans MT" Font-Size="12pt" ForeColor="#F8F2CF" Text="Save Entry"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label31" runat="server" Font-Names="Gill Sans MT" Font-Size="12pt" ForeColor="#F8F2CF" Text="Save Entry"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label33" runat="server" Font-Names="Gill Sans MT" Font-Size="12pt" ForeColor="#F8F2CF" Text="Save Entry"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style4" style="vertical-align: middle; text-align: center">
                                <asp:Label ID="Label42" runat="server" Font-Names="Gill Sans MT" Font-Size="12pt" ForeColor="#F8F2CF" Text="Save Entry"></asp:Label>
                            </td>
                            <td class="auto-style4" style="vertical-align: middle; text-align: center">
                                <asp:Label ID="Label38" runat="server" Font-Names="Gill Sans MT" Font-Size="12pt" ForeColor="#663300" Text="Add New Entry"></asp:Label>
                            </td>
                            <td class="auto-style4" style="vertical-align: middle; text-align: center">
                                <asp:Label ID="Label40" runat="server" Font-Names="Gill Sans MT" Font-Size="12pt" ForeColor="#F8F2CF" Text="Save Entry"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label30" runat="server" Font-Names="Gill Sans MT" Font-Size="12pt" ForeColor="#F8F2CF" Text="Save Entry"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label32" runat="server" Font-Names="Gill Sans MT" Font-Size="12pt" ForeColor="#F8F2CF" Text="Save Entry"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label34" runat="server" Font-Names="Gill Sans MT" Font-Size="12pt" ForeColor="#F8F2CF" Text="Save Entry"></asp:Label>
                            </td>
                        </tr>
                    </table>
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    &nbsp;<br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
