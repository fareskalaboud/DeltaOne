<%@ Page Language="VB" AutoEventWireup="false" CodeFile="AccountMenu.aspx.vb" Inherits="Accounts_AccountMenu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
            height: 96px;
        }
        .auto-style2 {
            height: 32px;
        }
        .auto-style4 {
            height: 33px;
        }
        </style>
</head>
<body style="background-color: #F8F2CF">
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
        <tr>
                <td>
    
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
                    <br />
    
        <asp:Label ID="Label1" runat="server" Font-Size="50pt" Text="Accounts Menu" Font-Names="Gill Sans MT" ForeColor="#663300"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                </td>
            </tr>
        <tr>
                <td class="auto-style3" style="text-align: center">
    
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    <table class="auto-style1">
                        <tr>
                            <td>
    
                    <asp:HyperLink ID="HyperLink1" runat="server" ImageUrl="~/Images/Sub-Menu/AddSuppliers.png" NavigateUrl="~/Accounts/AddUser.aspx">HyperLink</asp:HyperLink>
                            </td>
                            <td>
                    <asp:HyperLink ID="HyperLink2" runat="server" ImageUrl="~/Images/Sub-Menu/AddClient.png" NavigateUrl="~/Accounts/EmployeeList.aspx">HyperLink</asp:HyperLink>
                            </td>
                            <td>
                    <asp:HyperLink ID="HyperLink3" runat="server" ImageUrl="~/Images/Sub-Menu/List.png" NavigateUrl="~/Accounts/UserList.aspx" ImageWidth="64px">HyperLink</asp:HyperLink>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style4">
                    <asp:Label ID="Label20" runat="server" Font-Bold="True" Font-Names="Gill Sans MT" ForeColor="#663300" Text="Add a User"></asp:Label>
                                <br />
                                <br />
                                <br />
                            </td>
                            <td class="auto-style4">
                    <asp:Label ID="Label18" runat="server" Font-Bold="True" Font-Names="Gill Sans MT" ForeColor="#663300" Text="Employees"></asp:Label>
                                <br />
                                <br />
                                <br />
                            </td>
                            <td class="auto-style4">
                    <asp:Label ID="Label19" runat="server" Font-Bold="True" Font-Names="Gill Sans MT" ForeColor="#663300" Text="List of Users"></asp:Label>
                                <br />
                                <br />
                                <br />
                            </td>
                        </tr>
                        <tr>
                            <td>
    
                    <asp:HyperLink ID="HyperLink4" runat="server" ImageUrl="~/Images/Sub-Menu/Budget.png" NavigateUrl="~/Accounts/AccountBalance.aspx">HyperLink</asp:HyperLink>
                            </td>
                            <td>
                    <asp:HyperLink ID="HyperLink5" runat="server" ImageUrl="~/Images/Sub-Menu/Accounts.png" NavigateUrl="~/Accounts/AccountLog.aspx">HyperLink</asp:HyperLink>
                            </td>
                            <td>
                    <asp:HyperLink ID="HyperLink6" runat="server" ImageUrl="~/Images/Sub-Menu/MonthlyPaycheques.png" NavigateUrl="~/Accounts/MonthlyPaycheques.aspx">HyperLink</asp:HyperLink>
                            </td>
                        </tr>
                        <tr>
                            <td>
                    <asp:Label ID="Label21" runat="server" Font-Bold="True" Font-Names="Gill Sans MT" ForeColor="#663300" Text="Account Balance"></asp:Label>
                            </td>
                            <td>
                    <asp:Label ID="Label22" runat="server" Font-Bold="True" Font-Names="Gill Sans MT" ForeColor="#663300" Text="Account Log"></asp:Label>
                            </td>
                            <td>
                    <asp:Label ID="Label23" runat="server" Font-Bold="True" Font-Names="Gill Sans MT" ForeColor="#663300" Text="Monthly Paycheques"></asp:Label>
                            </td>
                        </tr>
                    </table>
                    <br />
                    <br />
                </td>
            </tr>
        <tr>
            <td class="auto-style2" style="text-align: center">
    
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;<br />
                    <br />
                </td>
        </tr>
    </table>
    
    </div>
    </form>
</body>
</html>
