Imports System.Data

Partial Class Client_Statistics
    Inherits System.Web.UI.Page

    Protected Sub StocksButton_Click(sender As Object, e As EventArgs) Handles StocksButton.Click
        Server.Transfer("..\Stock\StockMenu.aspx")
    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Session("Username") = "" Then Server.Transfer("..\Login.aspx")
        If Session("AccessToAccounts") = "False" Then
            Server.Transfer("..\Default.aspx")
        End If
        Session.Timeout = 10
    End Sub

    Protected Sub PurchasesButton_Click(sender As Object, e As EventArgs) Handles PurchasesButton.Click
        Server.Transfer("..\Purchases\PurchaseMenu.aspx")
    End Sub

    Protected Sub SignOutButton_Click(sender As Object, e As EventArgs) Handles SignOutButton.Click
        Session("Username") = ""
        Server.Transfer("..\Login.aspx")
    End Sub

    Protected Sub SalesButton_Click(sender As Object, e As EventArgs) Handles SalesButton.Click
        Server.Transfer("..\Sales\SalesMenu.aspx")
    End Sub

    Protected Sub AccountsButton_Click(sender As Object, e As EventArgs) Handles AccountsButton.Click
        Server.Transfer("..\Accounts\AccountMenu.aspx")
    End Sub

    Protected Sub SuppliersButton_Click(sender As Object, e As EventArgs) Handles SuppliersButton.Click
        Server.Transfer("..\Suppliers\SupplierMenu.aspx")
    End Sub


    Protected Sub ClientsButton_Click(sender As Object, e As EventArgs) Handles ClientsButton.Click
        Server.Transfer("..\Clients\ClientMenu.aspx")
    End Sub

    Protected Sub HomeButton_Click(sender As Object, e As EventArgs) Handles HomeButton.Click
        Server.Transfer("..\Default.aspx")
    End Sub

End Class
