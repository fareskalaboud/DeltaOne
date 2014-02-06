<%@ Page Language="VB" AutoEventWireup="false" CodeFile="StockList.aspx.vb" Inherits="PurchaseLog" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
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
<body style="background-color:#f8f2cf">
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
                <br />
    
            <asp:Label ID="Label1" runat="server" Font-Size="50pt" Text="Stock List" Font-Names="Gill Sans MT" ForeColor="#663300"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
    
        <asp:Label ID="Label22" runat="server" Font-Size="Large" Text="Search by ItemID" Font-Names="Gill Sans MT" ForeColor="#663300" Font-Bold="True"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="txtSearch" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                        <asp:ImageButton ID="btnSearch" runat="server" ImageUrl="~/Images/Form Buttons/SearchButton.png" Width="50px" />
&nbsp;
    
        <asp:Label ID="ErrorLabel0" runat="server" Font-Names="Gill Sans MT" Font-Size="Large" ForeColor="Red"></asp:Label>
                        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataKeyNames="ItemID" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="None" Height="179px" Width="1030px">
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
            <Columns>
                <asp:BoundField DataField="ItemID" HeaderText="ItemID" ReadOnly="True" SortExpression="ItemID" />
                <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
                <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                <asp:BoundField DataField="SupplierID" HeaderText="SupplierID" SortExpression="SupplierID" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" SelectCommand="SELECT * FROM [Stock]"></asp:SqlDataSource>
        <br />
        <br />
                    <p>
    
        <asp:Label ID="Status" runat="server" Font-Names="Gill Sans MT" Font-Size="Large" ForeColor="#663300"></asp:Label>
    
        <asp:Label ID="ErrorLabel" runat="server" Font-Names="Gill Sans MT" Font-Size="Large" ForeColor="Red"></asp:Label>
        </p>
            <p>
    
        <asp:Label ID="Label21" runat="server" Font-Size="Large" Text="Edit an Item's Details?" Font-Names="Gill Sans MT" ForeColor="#663300" Font-Bold="True"></asp:Label>
                    <br />
                    <br />
    
        <asp:Label ID="Label26" runat="server" Font-Size="Large" Text="ItemID" Font-Names="Gill Sans MT" ForeColor="#663300" Font-Bold="False"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span style="color: rgb(0, 0, 0); font-family: 'Times New Roman'; font-size: medium; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; background-color: rgb(248, 242, 207); display: inline !important; float: none;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Apple-converted-space">&nbsp;</span></span>&nbsp;
    
        <asp:Label ID="Label23" runat="server" Font-Size="Large" Text="Field" Font-Names="Gill Sans MT" ForeColor="#663300" Font-Bold="False"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span style="color: rgb(0, 0, 0); font-family: 'Times New Roman'; font-size: medium; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; background-color: rgb(248, 242, 207); display: inline !important; float: none;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Apple-converted-space">&nbsp;</span></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
        <asp:Label ID="Label24" runat="server" Font-Size="Large" Text="New Value" Font-Names="Gill Sans MT" ForeColor="#663300" Font-Bold="False"></asp:Label>
                        <br />
                    <asp:DropDownList ID="editID" runat="server" Height="23px" Width="221px" DataSourceID="SqlDataSource2" DataTextField="ItemID" DataValueField="ItemID">
                        <asp:ListItem>ItemID</asp:ListItem>
                        <asp:ListItem>Quantity</asp:ListItem>
                        <asp:ListItem>Description</asp:ListItem>
                        <asp:ListItem>Price</asp:ListItem>
                    </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" SelectCommand="SELECT [ItemID] FROM [Stock]"></asp:SqlDataSource>
&nbsp;&nbsp;&nbsp;
                    <asp:DropDownList ID="editField" runat="server" Height="23px" Width="221px">
                        <asp:ListItem>ItemID</asp:ListItem>
                        <asp:ListItem>Quantity</asp:ListItem>
                        <asp:ListItem>Description</asp:ListItem>
                        <asp:ListItem>Price</asp:ListItem>
                    </asp:DropDownList>
&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="editValue" runat="server" Height="23px" Width="221px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:ImageButton ID="UpdateEntry" runat="server" ImageUrl="~/Images/Form Buttons/Save.png" Height="52px" Width="50px" />
&nbsp;
    
        <asp:Label ID="Label25" runat="server" Font-Size="Large" Text="Save" Font-Names="Gill Sans MT" ForeColor="#663300" Font-Bold="False"></asp:Label>
        </p>
                    <p>
    
        <asp:Label ID="Label18" runat="server" Font-Size="Large" Text="Delete an Item?" Font-Names="Gill Sans MT" ForeColor="#663300" Font-Bold="True"></asp:Label>
                    </p>
                    <p>
    
        <asp:Label ID="Label20" runat="server" Font-Size="Large" Text="ItemID" Font-Names="Gill Sans MT" ForeColor="#663300" Font-Bold="False"></asp:Label>
                        <br />
                    <asp:DropDownList ID="itemID" runat="server" Height="23px" Width="221px" DataSourceID="SqlDataSource3" DataTextField="ItemID" DataValueField="ItemID">
                        <asp:ListItem>ItemID</asp:ListItem>
                        <asp:ListItem>Quantity</asp:ListItem>
                        <asp:ListItem>Description</asp:ListItem>
                        <asp:ListItem>Price</asp:ListItem>
                    </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" SelectCommand="SELECT [ItemID] FROM [Stock]"></asp:SqlDataSource>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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
        <br />
        <br />
        &nbsp;&nbsp;
            
            <br />
    
    </div>
    </form>
</body>
</html>
