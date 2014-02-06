<%@ Page Language="VB" AutoEventWireup="false" CodeFile="AccountBalance.aspx.vb" Inherits="Accounts_AccountMenu" %>

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
                <td style="background-color: #F8F2CF">
    
        <asp:Label ID="Label1" runat="server" Font-Size="50pt" Text="Account Balance" Font-Names="Gill Sans MT" ForeColor="#663300"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
            </tr>
        <tr>
                <td style="background-color: #F8F2CF; text-align: center;">
    
        <asp:Label ID="Label18" runat="server" Font-Names="Gill Sans MT" Font-Size="12pt" ForeColor="#663300" Text="Current Balance" Font-Bold="True"></asp:Label>
        <br />
                    <asp:Label ID="accCnt" runat="server" Font-Bold="True" Font-Names="Calibri" Text="0.0"></asp:Label>
                </td>
            </tr>
        <tr>
                <td style="background-color: #F8F2CF">
    
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Status" runat="server" Font-Names="Gill Sans MT" Font-Size="Large" ForeColor="#663300"></asp:Label>
        <asp:Label ID="ErrorLabel" runat="server" Font-Names="Gill Sans MT" Font-Size="Large" ForeColor="Red"></asp:Label>
                    <br />
    
                    <br />
    
        <asp:Label ID="Label7" runat="server" Font-Names="Gill Sans MT" Font-Size="12pt" ForeColor="#663300" Text="Add to Balance"></asp:Label>
        <br />
        <asp:TextBox ID="accAdd" runat="server" Width="221px"></asp:TextBox>
        &nbsp;&nbsp;&nbsp; Please enter the amount you would like to add onto the balance.<br />
        <br />
        <asp:Label ID="Label2" runat="server" Font-Names="Gill Sans MT" Font-Size="12pt" ForeColor="#663300" Text="Reason for Adding"></asp:Label>
        <br />
        <asp:TextBox ID="accRsA" runat="server" Width="221px"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp; Please enter the reason you are adding the amount written in the previous textbox.
                    <br />
                    <br />
        <asp:Label ID="Label4" runat="server" Font-Names="Gill Sans MT" Font-Size="12pt" ForeColor="#663300" Text="Deduct from Balance"></asp:Label>
                    <br />
        <asp:TextBox ID="accDdt" runat="server" Width="221px"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;Please enter the amount you would like to deduct from the balance.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <asp:Label ID="Label5" runat="server" Font-Names="Gill Sans MT" Font-Size="12pt" ForeColor="#663300" Text="Reason for Deducting"></asp:Label>
        &nbsp;<br />
        <asp:TextBox ID="accRsD" runat="server" Width="221px"></asp:TextBox>
        &nbsp;&nbsp;&nbsp; Please enter the reason you would like to deduct the amount written in the previous textbox.<br />
        <br />
        <asp:Label ID="Label3" runat="server" Font-Names="Gill Sans MT" Font-Size="12pt" ForeColor="#663300" Text="Other Notes"></asp:Label>
        <br />
        <asp:TextBox ID="accNts" runat="server" Height="104px" Width="221px"></asp:TextBox>
        &nbsp;&nbsp;&nbsp; If there are any other notes, write them here.<br />
        <br />
        <asp:Label ID="Label6" runat="server" Font-Names="Gill Sans MT" Font-Size="12pt" ForeColor="#663300" Text="Date of Recorded Transaction"></asp:Label>
        <br />
                    <asp:Label ID="accDat" runat="server"></asp:Label>
                    <br />
                    <br />
&nbsp;
                    <br />
                    <table class="auto-style1">
                        <tr>
                            <td class="auto-style4" style="vertical-align: middle; text-align: center">
                                <asp:ImageButton ID="AddEntry" runat="server" Height="40px" ImageUrl="~/Images/Form Buttons/Add New.png" Width="40px" />
                            </td>
                            <td class="auto-style4" style="vertical-align: middle; text-align: center">&nbsp;</td>
                            <td class="auto-style4" style="vertical-align: middle; text-align: center">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style4" style="vertical-align: middle; text-align: center">
                                <asp:Label ID="Label29" runat="server" Font-Names="Gill Sans MT" Font-Size="12pt" ForeColor="#663300" Text="Add New Entry"></asp:Label>
                            </td>
                            <td class="auto-style4" style="vertical-align: middle; text-align: center"></td>
                            <td class="auto-style4" style="vertical-align: middle; text-align: center">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
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
                </td>
            </tr>
        <tr>
                <td style="background-color: #F8F2CF">
    
                    &nbsp;</td>
            </tr>
        </table>
        </form>
</body>
</html>