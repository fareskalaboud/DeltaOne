<%@ Page Language="VB" AutoEventWireup="false" CodeFile="ChangePass.aspx.vb" Inherits="ChangePass" %>

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
    </style>
</head>
<body style="background-color: #f8f2cf">
    <form id="form1" runat="server">
    <div>
    
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
                    <br />

                        <asp:Label ID="Label1" runat="server" Font-Size="50pt" Text="Change Password" Font-Names="Gill Sans MT" ForeColor="#663300"></asp:Label>
                        <br />
        <br />
                    <asp:Label ID="Label20" runat="server" Font-Bold="True" Font-Names="Gill Sans MT" ForeColor="#663300" Text="Username"></asp:Label>
        <br />
        <asp:TextBox ID="userSession" runat="server" Height="23px" ReadOnly="True" Width="273px"></asp:TextBox>
        <br />
        <br />
                    <asp:Label ID="Label21" runat="server" Font-Bold="True" Font-Names="Gill Sans MT" ForeColor="#663300" Text="Current Password"></asp:Label>
        <br />
        <asp:TextBox ID="current" runat="server" Height="23px" Width="273px" TextMode="Password"></asp:TextBox>
        <br />
        <br />
                    <asp:Label ID="Label22" runat="server" Font-Bold="True" Font-Names="Gill Sans MT" ForeColor="#663300" Text="New Password"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
        <asp:Label ID="Status" runat="server" Font-Size="Large" Font-Names="Gill Sans MT" ForeColor="#663300" Font-Bold="False"></asp:Label>
    
        <asp:Label ID="ErrorLabel" runat="server" Font-Size="Large" Font-Names="Gill Sans MT" ForeColor="Red" Font-Bold="False"></asp:Label>
                    <br />
        <asp:TextBox ID="newPass" runat="server" Height="23px" Width="273px" TextMode="Password"></asp:TextBox>
        <br />
        <br />
                    <asp:Label ID="Label23" runat="server" Font-Bold="True" Font-Names="Gill Sans MT" ForeColor="#663300" Text="Verify New Password"></asp:Label>
        <br />
        <asp:TextBox ID="verify" runat="server" Height="23px" Width="273px" TextMode="Password"></asp:TextBox>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:ImageButton ID="UpdateEntry" runat="server" ImageUrl="~/Images/Form Buttons/Save.png" Height="52px" Width="50px" />
&nbsp;
    
        <asp:Label ID="Label25" runat="server" Font-Size="Large" Text="Save" Font-Names="Gill Sans MT" ForeColor="#663300" Font-Bold="False"></asp:Label>
    
    </div>
    </form>
</body>
</html>
