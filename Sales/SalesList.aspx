<%@ Page Language="VB" AutoEventWireup="false" CodeFile="SalesList.aspx.vb" Inherits="PurchaseLog" %>

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
    <form id="form1" runat="server">
    <div>
    
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
    
                    <p>
    
        <asp:Label ID="Label17" runat="server" Font-Size="50pt" Text="Sales List" Font-Names="Gill Sans MT" ForeColor="#663300"></asp:Label>
        </p>
                    <p>
    
        <asp:Label ID="Label21" runat="server" Font-Size="Large" Text="Search by " Font-Names="Gill Sans MT" ForeColor="#663300" Font-Bold="True"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:RadioButton ID="radItem" runat="server" Font-Names="Gill Sans MT" Text="ItemID" GroupName="searchBy" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:RadioButton ID="radClient" runat="server" Font-Names="Gill Sans MT" Text="ClientID" GroupName="searchBy" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:RadioButton ID="radUser" runat="server" Font-Names="Gill Sans MT" Text="UserID" GroupName="searchBy" />
                        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="txtSearch" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                        <asp:ImageButton ID="btnSearch" runat="server" ImageUrl="~/Images/Form Buttons/SearchButton.png" Width="50px" />
&nbsp;
    
        <asp:Label ID="ErrorLabel" runat="server" Font-Names="Gill Sans MT" Font-Size="Large" ForeColor="Red"></asp:Label>
                        <br />
                        <br />
    
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataKeyNames="SaleID" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="None" Height="154px" Width="1190px">
                            <AlternatingRowStyle BackColor="PaleGoldenrod" />
                            <Columns>
                                <asp:BoundField DataField="SaleID" HeaderText="SaleID" InsertVisible="False" ReadOnly="True" SortExpression="SaleID" />
                                <asp:BoundField DataField="SaleDate" HeaderText="SaleDate" SortExpression="SaleDate" />
                                <asp:BoundField DataField="ItemID" HeaderText="ItemID" SortExpression="ItemID" />
                                <asp:BoundField DataField="UserID" HeaderText="UserID" SortExpression="UserID" />
                                <asp:BoundField DataField="ClientID" HeaderText="ClientID" SortExpression="ClientID" />
                                <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
                                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
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
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" SelectCommand="SELECT * FROM [Sales]"></asp:SqlDataSource>
        </p>
                    <p>
    
        <asp:Label ID="Status" runat="server" Font-Names="Gill Sans MT" Font-Size="Large" ForeColor="#663300"></asp:Label>
        </p>
                    <p>
    
        <asp:Label ID="Label18" runat="server" Font-Size="Large" Text="Delete a Sale Record?" Font-Names="Gill Sans MT" ForeColor="#663300" Font-Bold="True"></asp:Label>
                    </p>
                    <p>
    
        <asp:Label ID="Label20" runat="server" Font-Size="Large" Text="SaleID" Font-Names="Gill Sans MT" ForeColor="#663300" Font-Bold="False"></asp:Label>
                        <br />
&nbsp;<asp:DropDownList ID="saleID" runat="server" DataSourceID="SqlDataSource2" DataTextField="SaleID" DataValueField="SaleID" Height="23px" Width="221px">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString3 %>" ProviderName="<%$ ConnectionStrings:ConnectionString3.ProviderName %>" SelectCommand="SELECT [SaleID] FROM [Sales]"></asp:SqlDataSource>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:ImageButton ID="DelEntry" runat="server" ImageUrl="~/Images/Form Buttons/Delete.png" />
&nbsp;
    
        <asp:Label ID="Label19" runat="server" Font-Size="Large" Text="Delete" Font-Names="Gill Sans MT" ForeColor="#663300" Font-Bold="False"></asp:Label>
                    </p>
                    <p>
    
                        &nbsp;</p>
                    <p>
    
                        &nbsp;</p>
                    <p>
    
                        &nbsp;</p>
                    <p>
    
                        &nbsp;</p>
                    <p>
    
                        &nbsp;</p>
                    <p>
    
                        &nbsp;</p>
                    <p>
    
                        &nbsp;</p>
                    <p>
    
                        &nbsp;</p>
                    <p>
    
                        &nbsp;</p>
                    <p>
    
                        &nbsp;</p>
                    <p>
    
                        &nbsp;</p>
                    <p>
    
                        &nbsp;</p>
                    <p>
    
                        &nbsp;</p>
                    <p>
    
                        &nbsp;</p>
                    <p>
    
                        &nbsp;</p>
                    <p>
    
                        &nbsp;</p>
                    <p>
    
                        &nbsp;</p>
                    <p>
    
                        &nbsp;</p>
                    <p>
    
                        &nbsp;</p>
                    <p>
    
                        &nbsp;</p>
    
                </td>
            </tr>
            <tr>
                <td>
    
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
