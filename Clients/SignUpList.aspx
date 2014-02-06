<%@ Page Language="VB" AutoEventWireup="false" CodeFile="SignUpList.aspx.vb" Inherits="Clients_SignUpList" %>

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
<body style="background-color: #f8f2cf">
    <form id="form1" runat="server" style="background-color: #f8f2cf">
    
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
    <div>
    
        <asp:Label ID="Label1" runat="server" Font-Size="50pt" Text="Client Sign Up List" Font-Names="Gill Sans MT" ForeColor="#663300"></asp:Label>
                    <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="None" AutoGenerateColumns="False" DataKeyNames="SignUpID" Width="913px">
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
            <Columns>
                <asp:BoundField DataField="SignUpID" HeaderText="SignUpID" InsertVisible="False" ReadOnly="True" SortExpression="SignUpID" />
                <asp:BoundField DataField="ClientID" HeaderText="ClientID" SortExpression="ClientID" />
                <asp:BoundField DataField="CPassword" HeaderText="CPassword" SortExpression="CPassword" />
                <asp:BoundField DataField="CName" HeaderText="CName" SortExpression="CName" />
                <asp:BoundField DataField="CAddress" HeaderText="CAddress" SortExpression="CAddress" />
                <asp:BoundField DataField="CEmail" HeaderText="CEmail" SortExpression="CEmail" />
                <asp:BoundField DataField="CTelephone" HeaderText="CTelephone" SortExpression="CTelephone" />
                <asp:BoundField DataField="CRepresentative" HeaderText="CRepresentative" SortExpression="CRepresentative" />
            </Columns>
            <FooterStyle BackColor="Tan" />
            <HeaderStyle BackColor="Tan" Font-Bold="True" />
            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
            <SortedAscendingCellStyle BackColor="#FAFAE7" />
            <SortedAscendingHeaderStyle BackColor="#DAC09E" />
            <SortedDescendingCellStyle BackColor="#E1DB9C" />
            <SortedDescendingHeaderStyle BackColor="#C2A47B" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" SelectCommand="SELECT * FROM [ClientSignUps]"></asp:SqlDataSource>
        <br />
    
        <asp:Label ID="Label18" runat="server" Font-Size="Large" Text="Approve application?" Font-Names="Gill Sans MT" ForeColor="#663300" Font-Bold="True"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
        <asp:Label ID="Status" runat="server" Font-Size="Large" Font-Names="Gill Sans MT" ForeColor="#663300" Font-Bold="False"></asp:Label>
                    <br />
                    <p>
    
        <asp:Label ID="Label20" runat="server" Font-Size="Large" Text="ClientID" Font-Names="Gill Sans MT" ForeColor="#663300" Font-Bold="False"></asp:Label>
                        <br />
&nbsp;<asp:DropDownList ID="clientID" runat="server" DataSourceID="SqlDataSource2" DataTextField="ClientID" DataValueField="ClientID" Height="24px" Width="221px">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" SelectCommand="SELECT [ClientID] FROM [ClientSignUps]"></asp:SqlDataSource>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:ImageButton ID="AddEntry" runat="server" ImageUrl="~/Images/Form Buttons/Add New.png" Height="49px" Width="49px" />
&nbsp;
    
        <asp:Label ID="Label19" runat="server" Font-Size="Large" Text="Add to Clients Table" Font-Names="Gill Sans MT" ForeColor="#663300" Font-Bold="False"></asp:Label>
                    </p>
        <br />
    
    </div>
    </form>
</body>
</html>
