<%@ Page Language="VB" AutoEventWireup="false" CodeFile="EmployeeList.aspx.vb" Inherits="Accounts_AccountMenu" %>

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
            width: 256px;
        }
        </style>
</head>
<body style="background-color: #F8F2CF">
    <form id="form1" runat="server">

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
    
        <asp:Label ID="Label1" runat="server" Font-Size="50pt" Text="Employees" Font-Names="Gill Sans MT" ForeColor="#663300"></asp:Label>
                    &nbsp;&nbsp;</td>
            </tr>
        <tr>
                <td class="auto-style3" style="text-align: center; background-color: #F8F2CF;">
    
                    <asp:HyperLink ID="EmployeeList" runat="server" ImageHeight="64px" ImageUrl="~/Images/Sub-Menu/List.png" NavigateUrl="~/Accounts/Employees.aspx">HyperLink</asp:HyperLink>
                    <br />
    
        <asp:Label ID="Label21" runat="server" Font-Names="Gill Sans MT" Font-Size="12pt" ForeColor="#663300" Text="List of All Employees" Font-Bold="True"></asp:Label>
                </td>
            </tr>
        <tr>
                <td class="auto-style3" style="text-align: left; background-color: #F8F2CF;">
    
        <br />
        <asp:Label ID="Label3" runat="server" Font-Names="Gill Sans MT" Font-Size="12pt" ForeColor="#663300" Text="Full Name"></asp:Label>
        <br />
        <asp:TextBox ID="empName" runat="server" Width="221px" EnableTheming="True"></asp:TextBox>
                    <br />
                    <br />
        <asp:Label ID="Label26" runat="server" Font-Names="Gill Sans MT" Font-Size="12pt" ForeColor="#663300" Text="Position"></asp:Label>
        <br />
        <asp:TextBox ID="empPos" runat="server" Width="221px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label4" runat="server" Font-Names="Gill Sans MT" Font-Size="12pt" ForeColor="#663300" Text="Email"></asp:Label>
        <br />
        <asp:TextBox ID="empEmail" runat="server" Width="221px"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Status" runat="server" Font-Names="Gill Sans MT" Font-Size="Large" ForeColor="#663300"></asp:Label>
        <asp:Label ID="ErrorLabel" runat="server" Font-Names="Gill Sans MT" Font-Size="Large" ForeColor="Red"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Mobile" runat="server" Font-Names="Gill Sans MT" Font-Size="12pt" ForeColor="#663300" Text="Mobile"></asp:Label>
        <br />
        <asp:TextBox ID="empMob" runat="server" Width="221px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Mobile0" runat="server" Font-Names="Gill Sans MT" Font-Size="12pt" ForeColor="#663300" Text="Landline/Home"></asp:Label>
        <br />
        <asp:TextBox ID="empLnd" runat="server" Width="221px"></asp:TextBox>
                    <br />
                    <br />
        <asp:Label ID="Mobile1" runat="server" Font-Names="Gill Sans MT" Font-Size="12pt" ForeColor="#663300" Text="Address"></asp:Label>
        <br />
        <asp:TextBox ID="empAdd" runat="server" Width="221px" Height="129px" TextMode="MultiLine"></asp:TextBox>
                    <br />
                    <br />
        <asp:Label ID="Mhsde" runat="server" Font-Names="Gill Sans MT" Font-Size="12pt" ForeColor="#663300" Text="Monthly Salary"></asp:Label>
        <br />
        <asp:TextBox ID="empSlr" runat="server" Width="221px"></asp:TextBox>
                    <br />
                    <br />
        <table class="auto-style1">
            <tr>
                <td class="auto-style2" style="text-align: left">&nbsp;&nbsp;<br />
                    <table class="auto-style1">
                        <tr>
                            <td class="auto-style4" style="vertical-align: middle; text-align: center">
            <asp:ImageButton ID="AddEntry" runat="server" Height="40px" ImageUrl="~/Images/Form Buttons/Add New.png" Width="40px" />
                            </td>
                            <td class="auto-style4" style="vertical-align: middle; text-align: center">
                                &nbsp;</td>
                            <td class="auto-style4" style="vertical-align: middle; text-align: center">
                                &nbsp;</td>
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
        <asp:Label ID="Label28" runat="server" Font-Names="Gill Sans MT" Font-Size="12pt" ForeColor="#663300" Text="Add New Entry"></asp:Label>
                            </td>
                            <td class="auto-style4" style="vertical-align: middle; text-align: center">
                                &nbsp;</td>
                            <td class="auto-style4" style="vertical-align: middle; text-align: center">
                                &nbsp;</td>
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
                    &nbsp;</td>
            </tr>
        </table>
                </td>
            </tr>
        </table>
        </form>
</body>
</html>
