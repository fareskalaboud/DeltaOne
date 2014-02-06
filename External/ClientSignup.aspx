<%@ Page Language="VB" AutoEventWireup="false" CodeFile="ClientSignup.aspx.vb" Inherits="External_ClientSignup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">



        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 30px;
        }
    </style>
</head>
<body style="background-color: #f8f2cf">
    <form id="form1" runat="server">
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2" style="text-align: center; background-color: #663300;">
                        <asp:Label ID="Label13" runat="server" Font-Names="Gill Sans MT" Font-Size="XX-Large" ForeColor="#F8F2CF" Text="Client Sign Up Form"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnBack" runat="server" Height="34px" Text="Back to Login" Width="134px" Font-Names="Gill Sans MT" Font-Size="Medium" ForeColor="#663300" />
                    </td>
                </tr>
                </table>
            <asp:Label ID="Label8" runat="server" Font-Names="Gill Sans MT" Font-Size="12pt" ForeColor="#663300" Text="ClientID"></asp:Label>
        <br />
                    <asp:TextBox ID="clientID" runat="server" Width="218px"></asp:TextBox>
            <br />
        <br />
        <asp:Label ID="Label9" runat="server" Font-Names="Gill Sans MT" Font-Size="12pt" ForeColor="#663300" Text="Password"></asp:Label>
        <br />
                    <asp:TextBox ID="clientPass" runat="server" Width="218px" TextMode="Password"></asp:TextBox>
            <br />
            <br />
        <asp:Label ID="Label14" runat="server" Font-Names="Gill Sans MT" Font-Size="12pt" ForeColor="#663300" Text="Verify Password"></asp:Label>
        <br />
                    <asp:TextBox ID="clientVerify" runat="server" Width="218px" TextMode="Password"></asp:TextBox>
            <br />
        <br />
        <asp:Label ID="Label2" runat="server" Font-Names="Gill Sans MT" Font-Size="12pt" ForeColor="#663300" Text="Client/Company Name"></asp:Label>
        <br />
                    <asp:TextBox ID="clientName" runat="server" Width="218px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Status" runat="server" Font-Names="Gill Sans MT" Font-Size="Large" ForeColor="#663300"></asp:Label>
                    <asp:Label ID="ErrorLabel" runat="server" Font-Names="Gill Sans MT" Font-Size="Large" ForeColor="Red"></asp:Label>
            <br />
        <br />
        <asp:Label ID="Label3" runat="server" Font-Names="Gill Sans MT" Font-Size="12pt" ForeColor="#663300" Text="Address"></asp:Label>
            &nbsp;&nbsp;&nbsp;<br />
                    <asp:TextBox ID="clientAddr" runat="server" Height="104px" Width="221px" TextMode="MultiLine"></asp:TextBox>
            &nbsp;<br />
        <br />
        <asp:Label ID="Label4" runat="server" Font-Names="Gill Sans MT" Font-Size="12pt" ForeColor="#663300" Text="Telephone Number"></asp:Label>
        <br />
                    <asp:TextBox ID="clientTel" runat="server" Width="221px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label5" runat="server" Font-Names="Gill Sans MT" Font-Size="12pt" ForeColor="#663300" Text="Email"></asp:Label>
        <br />
                    <asp:TextBox ID="clientEmail" runat="server" Width="221px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label6" runat="server" Font-Names="Gill Sans MT" Font-Size="12pt" ForeColor="#663300" Text="Representative"></asp:Label>
        <br />
                    <asp:TextBox ID="clientRep" runat="server" Width="221px"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;
            <br />
            <br />
        <asp:Label ID="Label10" runat="server" Font-Names="Gill Sans MT" Font-Size="12pt" ForeColor="#663300" Text="Invite Code"></asp:Label>
        <br />
                    <asp:TextBox ID="clientCode" runat="server" Width="221px"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnSignUp" runat="server" Height="34px" Text="Sign Up" Width="134px" Font-Names="Gill Sans MT" Font-Size="Medium" ForeColor="#663300" Font-Bold="True" />
    <div>
    
    </div>
    </form>
</body>
</html>
