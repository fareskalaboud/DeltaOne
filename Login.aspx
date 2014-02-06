<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Login.aspx.vb" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="background-color:#f8f2cf">
    <form id="form1" runat="server">
    <div align="center">
    
        <br />
        <img src="Images/Untitled-1.png" alt="Alfaris Technologies" style="height: 343px; width: 349px">
        <br />
        <asp:Label ID="Label3" runat="server" Font-Bold="False" Font-Names="Gill Sans MT" Font-Size="25pt" ForeColor="#663300" Text="ATech Stock System"></asp:Label>
        <br />
        <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Names="Gill Sans MT" ForeColor="#663300" Text="User Type"></asp:Label>
        <br />
    
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
        <asp:DropDownList ID="listLogin" runat="server" Height="23px" Width="137px">
            <asp:ListItem>Employee</asp:ListItem>
            <asp:ListItem>Client</asp:ListItem>
            <asp:ListItem>Supplier</asp:ListItem>
        </asp:DropDownList>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink1" runat="server" BackColor="#663300" Font-Bold="True" Font-Names="Gill Sans MT" ForeColor="#F8F2CF" NavigateUrl="~/External/ClientSignup.aspx">Client Signup</asp:HyperLink>
        <br />
    
        <asp:Label ID="Label1" runat="server" Text="Username" Font-Names="Gill Sans MT" Font-Size="12pt" Font-Bold="True" ForeColor="#663300"></asp:Label>
        <br />
        <asp:TextBox ID="txtUserID" runat="server" Columns="30"></asp:TextBox>
        <br />
        <asp:Label ID="Label2" runat="server" Text="Password" Font-Names="Gill Sans MT" Font-Size="12pt" Font-Bold="True" ForeColor="#663300"></asp:Label>
        <br />
        <asp:TextBox ID="txtPassword" runat="server" Font-Names="Password" Columns="30" TextMode="Password"></asp:TextBox>
        <br />
        <asp:Label ID="Verify" runat="server" Font-Bold="True" Font-Names="Gill Sans MT" ForeColor="Red"></asp:Label>
        <br />
        <asp:Button ID="btnLogin" runat="server" Text="Login" Font-Names="Gill Sans MT" Height="40px" Width="65px" style="margin-bottom: 0px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnClear" runat="server" Text="Clear" Font-Names="Gill Sans MT" Height="40px" Width="65px" />
    
    </div>
    </form>
</body>
</html>
