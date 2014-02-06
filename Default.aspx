<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="Home" %>

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
            background-color: #663300;
        }
    </style>
    <script type="text/javascript">

        var mrqWidth = '1195px';                  // width of marquee
        var mrqHeight = '20px';                   // height of marquee
        var mrqColour = '#663300';                // background colour
        var mouseStop = true;                     // pause on mouseover (true or false)
        var fontfamily = 'arial,sans-serif';      // font for content
        var mrqSpeed = 3;                         // scroll speed (1 = slow, 5 = fast)
        var content
        
        function loadXMLDoc()
        {   var textfile;       //Defining the text file
            if (window.XMLHttpRequest)
            { textfile = new XMLHttpRequest(); }  
            textfile.onreadystatechange = function ()
            {   if (textfile.readyState == 4 && textfile.status == 200)
                { content = textfile.responseText; }  //This assigns the text in the text file to the variable "content"
            }
            textfile.open("GET", "MarqueeText.txt", true); //This is the read function.
            textfile.send();
        }

        loadXMLDoc()

        var scrollSpeed = -mrqSpeed; var aw, marquee; var fontSize = parseInt(mrqHeight) - 4; 
        function startticker()
        {
            if (document.getElementById)
            {
                var tick = '<div style="position:relative;width:' + mrqWidth + ';height:' + mrqHeight + ';overflow:hidden;background-color:' + mrqColour + '"';
                if (mouseStop) 
                    tick += ' onmouseover="scrollSpeed=0" onmouseout="scrollSpeed=-mrqSpeed"';  //Colour of the text can be edited on the line below.
                tick += '><div id="marquee" style="position:absolute;color:#f8f2cf;left:0px;top:0px;font-family:' + fontfamily + ';font-size:' + fontSize + 'px;white-space:nowrap;"><\/div><\/div>';
                document.getElementById('ticker').innerHTML = tick;
                marquee = document.getElementById("marquee");
                marquee.style.left = (10 + parseInt(mrqWidth)) + "px";
                marquee.innerHTML = '<span id="tx">' + content + '<\/span>';
                aw = document.getElementById("tx").offsetWidth;
                lefttime = setInterval("scrollticker()", 50);
            }
        } function scrollticker() {
            marquee.style.left = (parseInt(marquee.style.left) > (-10 - aw)) ?
            marquee.style.left = parseInt(marquee.style.left) + scrollSpeed + "px" : parseInt(mrqWidth) + 10 + "px";
        } window.onload = startticker;
</script>
</head>
<body style="background-color: #f8f2cf">
    <form id="form1" runat="server">
        <div>

            <table class="auto-style1">
                <tr>
                    <td class="auto-style2" style="text-align: center">

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
                <tr>
                    <td style="text-align: left; direction: ltr;">

                        <asp:Label ID="Label13" runat="server" Font-Size="14pt" Text="Current User: " Font-Names="Gill Sans MT" ForeColor="#663300"></asp:Label>

                        <asp:Label ID="userSession" runat="server" Font-Size="14pt" Font-Names="Gill Sans MT" ForeColor="#663300"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:HyperLink ID="HyperLink8" runat="server" Font-Names="Gill Sans MT" Font-Size="14pt" Font-Underline="True" ForeColor="Blue" NavigateUrl="~/ChangePass.aspx">Change Password</asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center">

                        <asp:Label ID="Label1" runat="server" Font-Size="50pt" Text="Welcome" Font-Names="Gill Sans MT" ForeColor="#663300"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink1" runat="server" ImageUrl="~/Images/Home Page/Logout.png" NavigateUrl="~/Login.aspx">HyperLink</asp:HyperLink>
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label5" runat="server" Font-Names="Gill Sans MT" Font-Size="12pt" Text="Sign Out" Font-Bold="True" ForeColor="#663300"></asp:Label>
                        <br />
                        <asp:Panel ID="Panel1" runat="server" BackColor="#663300" BorderColor="#663300" Height="33px">
                            <div id ="ticker" style=" text-align: center">
                                this is the scrolling text
                            </div>
                        </asp:Panel>
                        <asp:TextBox ID="txtMrq" runat="server"></asp:TextBox>
&nbsp;&nbsp;
                        <asp:Button ID="btnMrq" runat="server" BackColor="#F8F2CF" Font-Names="Gill Sans MT" Font-Size="Medium" Text="Update News" Width="106px" BorderColor="#663300" Height="29px" />
                        <br />
        <asp:Label ID="ErrorLabel" runat="server" Font-Names="Gill Sans MT" Font-Size="12pt" Font-Bold="True" ForeColor="Red"></asp:Label>
        <br />
                        <table class="auto-style1">
                            <tr>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>
        <asp:HyperLink ID="HyperLink2" runat="server" ImageUrl="~/Images/Home Page/Clients.png" NavigateUrl="~/Clients/ClientMenu.aspx">HyperLink</asp:HyperLink>
                                </td>
                                <td>
        <asp:HyperLink ID="HyperLink3" runat="server" ImageUrl="~/Images/Home Page/Suppliers.png" NavigateUrl="~/Suppliers/SupplierMenu.aspx">HyperLink</asp:HyperLink>
                                </td>
                                <td>
        <asp:HyperLink ID="HyperLink4" runat="server" ImageUrl="~/Images/Home Page/Users.png" NavigateUrl="~/Accounts/AccountMenu.aspx">HyperLink</asp:HyperLink>
                                </td>
                            </tr>
                            <tr>
                                <td><asp:Label ID="Label6" runat="server" Text="Clients" Font-Names="Gill Sans MT" Font-Bold="True" ForeColor="#663300"></asp:Label>
                                </td>
                                <td><asp:Label ID="Label7" runat="server" Text="Suppliers" Font-Names="Gill Sans MT" Font-Bold="True" ForeColor="#663300"></asp:Label>
                                </td>
                                <td><asp:Label ID="Label4" runat="server" Text="Accounts" Font-Names="Gill Sans MT" Font-Bold="True" ForeColor="#663300"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>
        <asp:HyperLink ID="HyperLink5" runat="server" ImageUrl="~/Images/Home Page/Sales.png" NavigateUrl="~/Sales/SalesMenu.aspx">HyperLink</asp:HyperLink>
                                </td>
                                <td>
        <asp:HyperLink ID="HyperLink6" runat="server" ImageUrl="~/Images/Home Page/Purchase.png" NavigateUrl="~/Purchases/PurchaseMenu.aspx">HyperLink</asp:HyperLink>
                                </td>
                                <td>
        <asp:HyperLink ID="HyperLink7" runat="server" ImageUrl="~/Images/Home Page/Stock.png" NavigateUrl="~/Stock/StockMenu.aspx">HyperLink</asp:HyperLink>
                                </td>
                            </tr>
                            <tr>
                                <td>
        <asp:Label ID="Label8" runat="server" Text="Sales" Font-Names="Gill Sans MT" Font-Bold="True" ForeColor="#663300"></asp:Label>
                                </td>
                                <td><asp:Label ID="Label9" runat="server" Text="Purchases" Font-Names="Gill Sans MT" Font-Bold="True" ForeColor="#663300"></asp:Label>
                                </td>
                                <td><asp:Label ID="Label10" runat="server" Text="Stocks" Font-Names="Gill Sans MT" Font-Bold="True" ForeColor="#663300"></asp:Label>
                                </td>
                            </tr>
                        </table>
                        <br />
                        <br />
                        &nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
        <br />
                        <br />
                        &nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
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
                        <br />
                        <br />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
