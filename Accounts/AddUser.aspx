<%@ Page Language="VB" AutoEventWireup="false" CodeFile="AddUser.aspx.vb" Inherits="Accounts_AddUser" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            margin-bottom: 0px;
        }
        .auto-style2 {
            height: 32px;
        }
        .auto-style4 {
            height: 78px;
        }
    </style>
</head>
<body style="background-color: #F8F2CF">
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
                <td class="auto-style4">
    
        <asp:Label ID="Label1" runat="server" Font-Size="50pt" Text="Users" Font-Names="Gill Sans MT" ForeColor="#663300"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                </td>
            </tr>
            <tr>
                <td class="auto-style1" style="text-align: left">
    
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Font-Names="Gill Sans MT" Font-Size="12pt" ForeColor="#663300" Text="UserID"></asp:Label>
        <br />
        <asp:TextBox ID="userID" runat="server" Width="221px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Font-Names="Gill Sans MT" Font-Size="12pt" ForeColor="#663300" Text="Password"></asp:Label>
        <br />
        <asp:TextBox ID="userPass" runat="server" Width="221px" EnableTheming="True" TextMode="Password"></asp:TextBox>
                    <br />
                    <br />
        <asp:Label ID="Label26" runat="server" Font-Names="Gill Sans MT" Font-Size="12pt" ForeColor="#663300" Text="Verify Password"></asp:Label>
        <br />
        <asp:TextBox ID="vpass" runat="server" Width="221px" TextMode="Password"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label4" runat="server" Font-Names="Gill Sans MT" Font-Size="12pt" ForeColor="#663300" Text="Forename"></asp:Label>
        <br />
        <asp:TextBox ID="userFN" runat="server" Width="221px"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Status" runat="server" Font-Names="Gill Sans MT" Font-Size="Large" ForeColor="#663300"></asp:Label>
        <asp:Label ID="ErrorLabel" runat="server" Font-Names="Gill Sans MT" Font-Size="Large" ForeColor="Red"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label5" runat="server" Font-Names="Gill Sans MT" Font-Size="12pt" ForeColor="#663300" Text="Surname"></asp:Label>
        <br />
        <asp:TextBox ID="userSN" runat="server" Width="221px"></asp:TextBox>
                    <br />
        <br />
        <asp:Label ID="Label18" runat="server" Font-Names="Gill Sans MT" Font-Size="12pt" ForeColor="#663300" Text="Access to Accounts"></asp:Label>
        <br />
                    <asp:DropDownList ID="userAcc" runat="server" Height="16px" Width="221px">
                        <asp:ListItem>No</asp:ListItem>
                        <asp:ListItem>Yes</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="text-align: left">&nbsp;&nbsp;<br />
                    <table class="auto-style1">
                        <tr>
                            <td class="auto-style4" style="vertical-align: middle; text-align: center">
        <asp:Label ID="Label39" runat="server" Font-Names="Gill Sans MT" Font-Size="12pt" ForeColor="#F8F2CF" Text="Save Entry"></asp:Label>
                            </td>
                            <td class="auto-style4" style="vertical-align: middle; text-align: center">
            <asp:ImageButton ID="AddEntry" runat="server" Height="40px" ImageUrl="~/Images/Form Buttons/Add New.png" Width="40px" />
                            </td>
                            <td class="auto-style4" style="vertical-align: middle; text-align: center">
                                &nbsp;</td>
                            <td class="auto-style4" style="vertical-align: middle; text-align: center">
        <asp:Label ID="Label37" runat="server" Font-Names="Gill Sans MT" Font-Size="12pt" ForeColor="#F8F2CF" Text="Save Entry"></asp:Label>
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
        <asp:Label ID="Label40" runat="server" Font-Names="Gill Sans MT" Font-Size="12pt" ForeColor="#F8F2CF" Text="Save Entry"></asp:Label>
                            </td>
                            <td class="auto-style4" style="vertical-align: middle; text-align: center">
        <asp:Label ID="Label36" runat="server" Font-Names="Gill Sans MT" Font-Size="12pt" ForeColor="#663300" Text="Add New Entry"></asp:Label>
                            </td>
                            <td class="auto-style4" style="vertical-align: middle; text-align: center">
                                &nbsp;</td>
                            <td class="auto-style4" style="vertical-align: middle; text-align: center">
        <asp:Label ID="Label38" runat="server" Font-Names="Gill Sans MT" Font-Size="12pt" ForeColor="#F8F2CF" Text="Save Entry"></asp:Label>
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
