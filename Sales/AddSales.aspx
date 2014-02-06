<%@ Page Language="VB" AutoEventWireup="false" CodeFile="AddSales.aspx.vb" Inherits="Add_a_Purchase" %>

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
                        <asp:Label ID="Label43" runat="server" Font-Size="XX-Small"></asp:Label>
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
                        <asp:Label ID="Label44" runat="server" Font-Size="XX-Small"></asp:Label>
                    </td>
                </tr>
                </table>
                    </td>
                </tr>
                </table>
        <table class="auto-style1">
            <tr>
                <td>
                    <br />
    
        <asp:Label ID="Label9" runat="server" Font-Size="50pt" Text="Sales" Font-Names="Gill Sans MT" ForeColor="#663300"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            
        <br />
        <br />
        <asp:Label ID="Label11" runat="server" Font-Names="Gill Sans MT" Font-Size="12pt" ForeColor="#663300" Text="Date and Time of Sale"></asp:Label>
        <br />
                    <asp:Label ID="saleDate" runat="server"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label12" runat="server" Font-Names="Gill Sans MT" Font-Size="12pt" ForeColor="#663300" Text="ItemID"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Status" runat="server" Font-Names="Gill Sans MT" Font-Size="Large" ForeColor="#663300"></asp:Label>
        <asp:Label ID="ErrorLabel" runat="server" Font-Names="Gill Sans MT" Font-Size="Large" ForeColor="Red"></asp:Label>
        <br />
                    <asp:DropDownList ID="saleItem" runat="server" DataSourceID="SqlDataSource1" DataTextField="ItemID" DataValueField="ItemID" Height="23px" Width="221px">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [ItemID] FROM [Stock]"></asp:SqlDataSource>
                    <br />
        <br />
        <asp:Label ID="Label13" runat="server" Font-Names="Gill Sans MT" Font-Size="12pt" ForeColor="#663300" Text="UserID"></asp:Label>
        <br />
        <asp:TextBox ID="saleUser" runat="server" Width="221px" ReadOnly="True"></asp:TextBox>
        <br />
                    <br />
        <asp:Label ID="Label26" runat="server" Font-Names="Gill Sans MT" Font-Size="12pt" ForeColor="#663300" Text="ClientID"></asp:Label>
                    <br />
                    <asp:DropDownList ID="saleClt" runat="server" DataSourceID="SqlDataSource2" DataTextField="ClientID" DataValueField="ClientID" Height="25px" Width="221px">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString3 %>" ProviderName="<%$ ConnectionStrings:ConnectionString3.ProviderName %>" SelectCommand="SELECT [ClientID] FROM [Clients]"></asp:SqlDataSource>
                    <br />
                    <br />
        <asp:Label ID="Label14" runat="server" Font-Names="Gill Sans MT" Font-Size="12pt" ForeColor="#663300" Text="Quantity Sold"></asp:Label>
        <br />
        <asp:TextBox ID="saleQty" runat="server" Width="221px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label15" runat="server" Font-Names="Gill Sans MT" Font-Size="12pt" ForeColor="#663300" Text="Sale Price"></asp:Label>
        <br />
        <asp:TextBox ID="salePrice" runat="server" Width="221px"></asp:TextBox>
                </td>
            </tr>
        </table>
    
        &nbsp;<br />
            &nbsp;&nbsp;<br />
            <table class="auto-style1">
                <tr>
                    <td class="auto-style4" style="vertical-align: middle; text-align: center">
                        &nbsp;</td>
                    <td class="auto-style4" style="vertical-align: middle; text-align: center">
                        <asp:ImageButton ID="AddEntry" runat="server" Height="40px" ImageUrl="~/Images/Form Buttons/Add New.png" Width="40px" />
                        <asp:Label ID="Label41" runat="server" Font-Names="Gill Sans MT" Font-Size="12pt" ForeColor="#F8F2CF" Text="Save Entry"></asp:Label>
                    </td>
                    <td class="auto-style4" style="vertical-align: middle; text-align: center">
                        <asp:Label ID="Label39" runat="server" Font-Names="Gill Sans MT" Font-Size="12pt" ForeColor="#F8F2CF" Text="Save Entry"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label38" runat="server" Font-Names="Gill Sans MT" Font-Size="12pt" ForeColor="#F8F2CF" Text="Save Entry"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label31" runat="server" Font-Names="Gill Sans MT" Font-Size="12pt" ForeColor="#F8F2CF" Text="Save Entry"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label33" runat="server" Font-Names="Gill Sans MT" Font-Size="12pt" ForeColor="#F8F2CF" Text="Save Entry"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4" style="vertical-align: middle; text-align: center">
                        &nbsp;</td>
                    <td class="auto-style4" style="vertical-align: middle; text-align: center">
                        <asp:Label ID="Label36" runat="server" Font-Names="Gill Sans MT" Font-Size="12pt" ForeColor="#663300" Text="Add New Entry"></asp:Label>
                        <asp:Label ID="Label42" runat="server" Font-Names="Gill Sans MT" Font-Size="12pt" ForeColor="#F8F2CF" Text="Save Entry"></asp:Label>
                    </td>
                    <td class="auto-style4" style="vertical-align: middle; text-align: center">
                        <asp:Label ID="Label40" runat="server" Font-Names="Gill Sans MT" Font-Size="12pt" ForeColor="#F8F2CF" Text="Save Entry"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label30" runat="server" Font-Names="Gill Sans MT" Font-Size="12pt" ForeColor="#F8F2CF" Text="Save Entry"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label32" runat="server" Font-Names="Gill Sans MT" Font-Size="12pt" ForeColor="#F8F2CF" Text="Save Entry"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label34" runat="server" Font-Names="Gill Sans MT" Font-Size="12pt" ForeColor="#F8F2CF" Text="Save Entry"></asp:Label>
                    </td>
                </tr>
            </table>
            <br />
            <br />
            <br />
            <br />
            <br />
            &nbsp;<br />
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
