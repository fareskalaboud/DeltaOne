<%@ Page Language="VB" AutoEventWireup="false" CodeFile="UserList.aspx.vb" Inherits="Accounts_AccountMenu" %>

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
                <td>
    
        <asp:Label ID="Label1" runat="server" Font-Size="50pt" Text="User List" Font-Names="Gill Sans MT" ForeColor="#663300"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
            </tr>
        <tr>
                <td class="auto-style3" style="text-align: left; background-color: #F8F2CF;">
    
                    <br />
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataKeyNames="UserNumber" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="None" Width="1177px">
                        <AlternatingRowStyle BackColor="PaleGoldenrod" />
                        <Columns>
                            <asp:BoundField DataField="UserNumber" HeaderText="UserNumber" InsertVisible="False" ReadOnly="True" SortExpression="UserNumber" />
                            <asp:BoundField DataField="UserID" HeaderText="UserID" SortExpression="UserID" />
                            <asp:BoundField DataField="UForename" HeaderText="UForename" SortExpression="UForename" />
                            <asp:BoundField DataField="USurname" HeaderText="USurname" SortExpression="USurname" />
                            <asp:BoundField DataField="UAccounts" HeaderText="UAccounts" SortExpression="UAccounts" />
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
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" SelectCommand="SELECT * FROM [Users]"></asp:SqlDataSource>
                    <br />
                    <p>
    
        <asp:Label ID="Status" runat="server" Font-Names="Gill Sans MT" Font-Size="Large" ForeColor="#663300"></asp:Label>
        </p>
                    <p>
    
        <asp:Label ID="Label21" runat="server" Font-Size="Large" Text="Edit a User's Details?" Font-Names="Gill Sans MT" ForeColor="#663300" Font-Bold="True"></asp:Label>
                    <br />
                    <br />
    
        <asp:Label ID="Label22" runat="server" Font-Size="Large" Text="UserID" Font-Names="Gill Sans MT" ForeColor="#663300" Font-Bold="False"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span style="color: rgb(0, 0, 0); font-family: 'Times New Roman'; font-size: medium; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; background-color: rgb(248, 242, 207); display: inline !important; float: none;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Apple-converted-space">&nbsp;</span></span>&nbsp;
    
        <asp:Label ID="Label23" runat="server" Font-Size="Large" Text="Field" Font-Names="Gill Sans MT" ForeColor="#663300" Font-Bold="False"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span style="color: rgb(0, 0, 0); font-family: 'Times New Roman'; font-size: medium; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; background-color: rgb(248, 242, 207); display: inline !important; float: none;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Apple-converted-space">&nbsp;</span></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
        <asp:Label ID="Label24" runat="server" Font-Size="Large" Text="New Value" Font-Names="Gill Sans MT" ForeColor="#663300" Font-Bold="False"></asp:Label>
                        <br />
                    <asp:DropDownList ID="editID" runat="server" datasourceid="SqlDataSource2" DataTextField="UserID" DataValueField="UserID" Height="24px" Width="221px">
                    </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" SelectCommand="SELECT [UserID] FROM [Users]"></asp:SqlDataSource>
&nbsp;&nbsp;&nbsp;
                    <asp:DropDownList ID="editField" runat="server" Height="23px" Width="221px">
                        <asp:ListItem>UForename</asp:ListItem>
                        <asp:ListItem>UserID</asp:ListItem>
                        <asp:ListItem>UAccounts</asp:ListItem>
                        <asp:ListItem>USurname</asp:ListItem>
                    </asp:DropDownList>
&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="editValue" runat="server" Height="23px" Width="221px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:ImageButton ID="UpdateEntry" runat="server" ImageUrl="~/Images/Form Buttons/Save.png" Height="52px" Width="50px" />
&nbsp;
    
        <asp:Label ID="Label25" runat="server" Font-Size="Large" Text="Save" Font-Names="Gill Sans MT" ForeColor="#663300" Font-Bold="False"></asp:Label>
                    <br />
                    </p>
                    <p>
    
        <asp:Label ID="Label18" runat="server" Font-Size="Large" Text="Delete a user?" Font-Names="Gill Sans MT" ForeColor="#663300" Font-Bold="True"></asp:Label>
                    </p>
                    <p>
    
        <asp:Label ID="Label20" runat="server" Font-Size="Large" Text="UserID" Font-Names="Gill Sans MT" ForeColor="#663300" Font-Bold="False"></asp:Label>
                        <br />
                    <asp:DropDownList ID="userID" runat="server" datasourceid="SqlDataSource3" DataTextField="UserID" DataValueField="UserID" Height="24px" Width="221px">
                    </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" SelectCommand="SELECT [UserID] FROM [Users]"></asp:SqlDataSource>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:ImageButton ID="DelEntry" runat="server" ImageUrl="~/Images/Form Buttons/Delete.png" />
&nbsp;
    
        <asp:Label ID="Label19" runat="server" Font-Size="Large" Text="Delete" Font-Names="Gill Sans MT" ForeColor="#663300" Font-Bold="False"></asp:Label>
                    </p>
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
