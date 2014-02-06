<%@ Page Language="VB" AutoEventWireup="false" CodeFile="SupplierPending.aspx.vb" Inherits="External_SupplierPending" %>

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
<body style="background-color:#f8f2cf">
    <form id="form1" runat="server">
    <div>
    
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2" style="text-align: center; background-color: #663300;">
                        <asp:Label ID="Label27" runat="server" Font-Size="XX-Small"></asp:Label>
                        <br />
                        <asp:Label ID="Label29" runat="server" Font-Names="Gill Sans MT" Font-Size="XX-Large" ForeColor="#F8F2CF" Text="Supplier Pending Orders"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="SignOutButton" runat="server" BackColor="#F8F2CF" Font-Names="Gill Sans MT" Font-Size="Medium" Text="Sign Out" Width="100px" ForeColor="#663300" />
                        <br />
                        <asp:Label ID="Label28" runat="server" Font-Size="XX-Small"></asp:Label>
                    </td>
                </tr>
                </table>
        <br />
    
        <asp:Label ID="Label9" runat="server" Font-Size="50pt" Text="Orders" Font-Names="Gill Sans MT" ForeColor="#663300"></asp:Label>
        <br />
        <asp:Label ID="Label30" runat="server" Font-Bold="True" Font-Names="Gill Sans MT" ForeColor="#663300" Text="For"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:Label ID="supplierSession" runat="server" Font-Bold="True" Font-Names="Gill Sans MT" ForeColor="#663300"></asp:Label>
        <br />
        <asp:GridView ID="GridView1" runat="server" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataSourceID="SqlDataSource2" ForeColor="Black" GridLines="None" AutoGenerateColumns="False" DataKeyNames="PurchaseID" Height="218px" Width="1159px">
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
            <Columns>
                <asp:BoundField DataField="PurchaseID" HeaderText="PurchaseID" InsertVisible="False" ReadOnly="True" SortExpression="PurchaseID" />
                <asp:BoundField DataField="PurchaseDate" HeaderText="PurchaseDate" SortExpression="PurchaseDate" />
                <asp:BoundField DataField="ItemID" HeaderText="ItemID" SortExpression="ItemID" />
                <asp:BoundField DataField="UserID" HeaderText="UserID" SortExpression="UserID" />
                <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
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
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString3 %>" ProviderName="<%$ ConnectionStrings:ConnectionString3.ProviderName %>" SelectCommand="SELECT [PurchaseID], [PurchaseDate], [ItemID], [UserID], [Quantity], [Price], [Status] FROM [Purchases] WHERE ([SupplierID] = ?)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="supplierSession" Name="SupplierID" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
    
            <br />
        <asp:Label ID="confirmLabel" runat="server" Font-Bold="True" Font-Names="Gill Sans MT" ForeColor="#663300">Update Purchase Status?</asp:Label>
            <br />
            <br />
        <asp:Label ID="confirmLabel1" runat="server" Font-Bold="False" Font-Names="Gill Sans MT" ForeColor="#663300">PurchaseID</asp:Label>
            <br />
            <asp:DropDownList ID="orderID" runat="server" DataSourceID="SqlDataSource1" DataTextField="PurchaseID" DataValueField="PurchaseID" Height="23px" Width="221px">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString3 %>" ProviderName="<%$ ConnectionStrings:ConnectionString3.ProviderName %>" SelectCommand="SELECT [PurchaseID] FROM [Purchases] WHERE ([SupplierID] = ?)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="supplierSession" Name="SupplierID" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
&nbsp;
            <asp:Label ID="Label31" runat="server" Text="Please enter the PurchaseID of the purchase you would like to confirm."></asp:Label>
            <br />
            <br />
        <asp:Label ID="confirmLabel0" runat="server" Font-Bold="False" Font-Names="Gill Sans MT" ForeColor="#663300">Status</asp:Label>
            <br />
            <asp:DropDownList ID="orderStatus" runat="server" Height="25px" Width="221px">
                <asp:ListItem>Confirmed</asp:ListItem>
                <asp:ListItem>Out of Stock</asp:ListItem>
            </asp:DropDownList>
&nbsp;&nbsp; Please enter the updated status of the purchase.<br />
            <br />
            <asp:Label ID="Status" runat="server" Font-Bold="True" Font-Italic="False" Font-Names="Gill Sans MT" ForeColor="#663300"></asp:Label>
            <asp:Label ID="ErrorLabel" runat="server" Font-Bold="True" Font-Italic="False" Font-Names="Gill Sans MT" ForeColor="Red"></asp:Label>
            <br />
            <br />
            <asp:Button ID="btnConfirm" runat="server" BackColor="#663300" Font-Names="Gill Sans MT" Font-Size="Large" ForeColor="#F8F2CF" Height="46px" Text="Confirm" Width="221px" />
            <br />
    
    </div>
    </form>
</body>
</html>
