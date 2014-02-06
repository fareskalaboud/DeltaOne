<%@ Page Language="VB" AutoEventWireup="false" CodeFile="SupplierList.aspx.vb" Inherits="PurchaseLog" %>

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
    
            <asp:Label ID="Label1" runat="server" Font-Size="50pt" Text="Suppliers List" Font-Names="Gill Sans MT" ForeColor="#663300"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
    
        <asp:Label ID="Label27" runat="server" Font-Size="Large" Text="Search by SupplierID" Font-Names="Gill Sans MT" ForeColor="#663300" Font-Bold="True"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="txtSearch" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                        <asp:ImageButton ID="btnSearch" runat="server" ImageUrl="~/Images/Form Buttons/SearchButton.png" Width="50px" />
&nbsp;
    
        <asp:Label ID="ErrorLabel0" runat="server" Font-Names="Gill Sans MT" Font-Size="Large" ForeColor="Red"></asp:Label>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataKeyNames="SupplierNumber" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="None" Width="1465px">
                <AlternatingRowStyle BackColor="PaleGoldenrod" />
                <Columns>
                    <asp:BoundField DataField="SupplierNumber" HeaderText="SupplierNumber" InsertVisible="False" ReadOnly="True" SortExpression="SupplierNumber" />
                    <asp:BoundField DataField="SupplierID" HeaderText="SupplierID" SortExpression="SupplierID" />
                    <asp:BoundField DataField="SName" HeaderText="SName" SortExpression="SName" />
                    <asp:BoundField DataField="SAddress" HeaderText="SAddress" SortExpression="SAddress" />
                    <asp:BoundField DataField="SEmail" HeaderText="SEmail" SortExpression="SEmail" />
                    <asp:BoundField DataField="STelephone" HeaderText="STelephone" SortExpression="STelephone" />
                    <asp:BoundField DataField="SRepresentative" HeaderText="SRepresentative" SortExpression="SRepresentative" />
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString3 %>" ProviderName="<%$ ConnectionStrings:ConnectionString3.ProviderName %>" SelectCommand="SELECT * FROM [Suppliers]"></asp:SqlDataSource>
    
        <br />
        <br />
    
        <asp:Label ID="Status" runat="server" Font-Names="Gill Sans MT" Font-Size="Large" ForeColor="#663300"></asp:Label>
                    <br />
            <br />
    
        <asp:Label ID="Label26" runat="server" Font-Size="Large" Text="Edit a Supplier's Details?" Font-Names="Gill Sans MT" ForeColor="#663300" Font-Bold="True"></asp:Label>
                    <br />
            <br />
    
        <asp:Label ID="Label22" runat="server" Font-Size="Large" Text="SupplierID" Font-Names="Gill Sans MT" ForeColor="#663300" Font-Bold="False"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span style="color: rgb(0, 0, 0); font-family: 'Times New Roman'; font-size: medium; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; background-color: rgb(248, 242, 207); display: inline !important; float: none;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Apple-converted-space">&nbsp;</span></span>&nbsp;
    
        <asp:Label ID="Label23" runat="server" Font-Size="Large" Text="Field" Font-Names="Gill Sans MT" ForeColor="#663300" Font-Bold="False"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span style="color: rgb(0, 0, 0); font-family: 'Times New Roman'; font-size: medium; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; background-color: rgb(248, 242, 207); display: inline !important; float: none;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Apple-converted-space">&nbsp;</span></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
        <asp:Label ID="Label24" runat="server" Font-Size="Large" Text="New Value" Font-Names="Gill Sans MT" ForeColor="#663300" Font-Bold="False"></asp:Label>
                        <br />
                    <asp:DropDownList ID="editID" runat="server" datasourceid="SqlDataSource2" DataTextField="SupplierID" DataValueField="SupplierID" Height="24px" Width="221px">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" SelectCommand="SELECT [SupplierID] FROM [Suppliers]"></asp:SqlDataSource>
&nbsp;&nbsp;&nbsp;
                    <asp:DropDownList ID="editField" runat="server" Height="23px" Width="221px">
                        <asp:ListItem>SupplierID</asp:ListItem>
                        <asp:ListItem>SName</asp:ListItem>
                        <asp:ListItem>SAddress</asp:ListItem>
                        <asp:ListItem>SEmail</asp:ListItem>
                        <asp:ListItem>STelephone</asp:ListItem>
                        <asp:ListItem>SRepresentative</asp:ListItem>
                    </asp:DropDownList>
&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="editValue" runat="server" Height="23px" Width="221px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:ImageButton ID="UpdateEntry" runat="server" ImageUrl="~/Images/Form Buttons/Save.png" Height="52px" Width="50px" />
&nbsp;
    
        <asp:Label ID="Label25" runat="server" Font-Size="Large" Text="Save" Font-Names="Gill Sans MT" ForeColor="#663300" Font-Bold="False"></asp:Label>
                    <br />
                    <br />
    
        <asp:Label ID="Label21" runat="server" Font-Size="Large" Text="Delete a supplier?" Font-Names="Gill Sans MT" ForeColor="#663300" Font-Bold="True"></asp:Label>
                    <br />
                    <p>
    
        <asp:Label ID="Label20" runat="server" Font-Size="Large" Text="SupplierID" Font-Names="Gill Sans MT" ForeColor="#663300" Font-Bold="False"></asp:Label>
                        <br />
                        <asp:TextBox ID="suppID" runat="server" Height="24px" style="margin-bottom: 5px" Width="224px"></asp:TextBox>
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
    
    </div>
    </form>
</body>
</html>
