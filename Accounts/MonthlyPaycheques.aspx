<%@ Page Language="VB" AutoEventWireup="false" CodeFile="MonthlyPaycheques.aspx.vb" Inherits="Accounts_MonthlyPaycheques" %>

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
        .auto-style3 {
            height: 106px;
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
                <td style="background-color: #F8F2CF" class="auto-style3">
    
        <asp:Label ID="Label1" runat="server" Font-Size="50pt" Text="Monthly Paycheques" Font-Names="Gill Sans MT" ForeColor="#663300"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
            </tr>
        <tr>
                <td style="background-color: #F8F2CF; text-align: center;" class="auto-style2">
    
                    <asp:HyperLink ID="PaychequeList" runat="server" ImageHeight="64px" ImageUrl="~/Images/Sub-Menu/List.png" NavigateUrl="~/Accounts/EmployeePaycheques.aspx">HyperLink</asp:HyperLink>
                    <br />
    
        <asp:Label ID="Label21" runat="server" Font-Names="Gill Sans MT" Font-Size="12pt" ForeColor="#663300" Text="Log Of Monthly Payments" Font-Bold="True"></asp:Label>
                </td>
            </tr>
        <tr>
                <td style="background-color: #F8F2CF">
    
        <asp:Label ID="Label7" runat="server" Font-Names="Gill Sans MT" Font-Size="12pt" ForeColor="#663300" Text="EmployeeID"></asp:Label>
        <br />
                    <asp:DropDownList ID="empID" runat="server" DataSourceID="SqlDataSource1" DataTextField="EFullName" DataValueField="EmployeeID" Height="20px" Width="221px">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" SelectCommand="SELECT [EmployeeID], [EFullName] FROM [EmployeeList]"></asp:SqlDataSource>
                    <br />
                    <br />
        <asp:Label ID="Label4" runat="server" Font-Names="Gill Sans MT" Font-Size="12pt" ForeColor="#663300" Text="Days Late"></asp:Label>
        <br />
        <asp:TextBox ID="empLate" runat="server" Width="221px"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
        <asp:Label ID="Status" runat="server" Font-Names="Gill Sans MT" Font-Size="12pt" ForeColor="#663300" Font-Bold="True"></asp:Label>
    
        <asp:Label ID="ErrorLabel" runat="server" Font-Names="Gill Sans MT" Font-Size="12pt" ForeColor="Red" Font-Bold="True"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label5" runat="server" Font-Names="Gill Sans MT" Font-Size="12pt" ForeColor="#663300" Text="Days Absent"></asp:Label>
        <br />
        <asp:TextBox ID="empAbs" runat="server" Width="221px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Font-Names="Gill Sans MT" Font-Size="12pt" ForeColor="#663300" Text="Month of Salary"></asp:Label>
        <br />
                    <asp:DropDownList ID="empMon" runat="server" Height="23px" Width="221px">
                        <asp:ListItem>January</asp:ListItem>
                        <asp:ListItem>February</asp:ListItem>
                        <asp:ListItem>March</asp:ListItem>
                        <asp:ListItem>April</asp:ListItem>
                        <asp:ListItem>May</asp:ListItem>
                        <asp:ListItem>June</asp:ListItem>
                        <asp:ListItem>July</asp:ListItem>
                        <asp:ListItem>August</asp:ListItem>
                        <asp:ListItem>September</asp:ListItem>
                        <asp:ListItem>October</asp:ListItem>
                        <asp:ListItem>November</asp:ListItem>
                        <asp:ListItem>December</asp:ListItem>
                    </asp:DropDownList>
                    <br />
        <br />
        <asp:Label ID="Label22" runat="server" Font-Names="Gill Sans MT" Font-Size="12pt" ForeColor="#663300" Text="Year of Salary"></asp:Label>
        <br />
                    <asp:DropDownList ID="empYr" runat="server" Height="23px" Width="221px">
                        <asp:ListItem>1999</asp:ListItem>
                        <asp:ListItem>2000</asp:ListItem>
                        <asp:ListItem>2001</asp:ListItem>
                        <asp:ListItem>2002</asp:ListItem>
                        <asp:ListItem>2003</asp:ListItem>
                        <asp:ListItem>2004</asp:ListItem>
                        <asp:ListItem>2005</asp:ListItem>
                        <asp:ListItem>2006</asp:ListItem>
                        <asp:ListItem>2007</asp:ListItem>
                        <asp:ListItem>2008</asp:ListItem>
                        <asp:ListItem>2009</asp:ListItem>
                        <asp:ListItem>2010</asp:ListItem>
                        <asp:ListItem>2011</asp:ListItem>
                        <asp:ListItem>2012</asp:ListItem>
                        <asp:ListItem>2013</asp:ListItem>
                        <asp:ListItem>2014</asp:ListItem>
                        <asp:ListItem>2015</asp:ListItem>
                        <asp:ListItem>2016</asp:ListItem>
                        <asp:ListItem>2017</asp:ListItem>
                        <asp:ListItem>2018</asp:ListItem>
                        <asp:ListItem>2019</asp:ListItem>
                        <asp:ListItem>2020</asp:ListItem>
                    </asp:DropDownList>
        <br />
        <br />
        <asp:Label ID="Label6" runat="server" Font-Names="Gill Sans MT" Font-Size="12pt" ForeColor="#663300" Text="Deduct From Salary"></asp:Label>
        <br />
        <asp:TextBox ID="empDdt" runat="server" Width="221px"></asp:TextBox>
                    <br />
                    <br />
                    &nbsp;&nbsp;<br />
                    <table class="auto-style1">
                        <tr>
                            <td class="auto-style4" style="vertical-align: middle; text-align: center">
                                <asp:ImageButton ID="AddEntry" runat="server" Height="40px" ImageUrl="~/Images/Form Buttons/Add New.png" Width="40px" />
                            </td>
                            <td class="auto-style4" style="vertical-align: middle; text-align: center">
                                &nbsp;</td>
                            <td class="auto-style4" style="vertical-align: middle; text-align: center">
                                &nbsp;</td>
                            <td>
                                <asp:Label ID="Label29" runat="server" Font-Names="Gill Sans MT" Font-Size="12pt" ForeColor="#F8F2CF" Text="Save Entry"></asp:Label>
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
                                <asp:Label ID="Label36" runat="server" Font-Names="Gill Sans MT" Font-Size="12pt" ForeColor="#663300" Text="Add New Entry"></asp:Label>
                            </td>
                            <td class="auto-style4" style="vertical-align: middle; text-align: center">
                                &nbsp;</td>
                            <td class="auto-style4" style="vertical-align: middle; text-align: center">
                                &nbsp;</td>
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
                </td>
            </tr>
        </table>
        </form>
</body>
</html>
