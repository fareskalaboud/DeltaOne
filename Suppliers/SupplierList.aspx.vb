Imports System.Data

Partial Class PurchaseLog
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

    Protected Sub DelEntry_Click(sender As Object, e As ImageClickEventArgs) Handles DelEntry.Click
        'creates the conection connects to db
        Dim connection As New OleDb.OleDbConnection
        Dim provider As String
        Dim source As String
        provider = "PROVIDER=Microsoft.Jet.OLEDB.4.0;"
        source = "Data Source=|DataDirectory|DeltaOneMDB.mdb"
        connection.ConnectionString = provider & source
        Dim SQL As String
        SQL = "DELETE FROM Suppliers WHERE SupplierID = '" & suppID.Text & "'"
        Dim cmd As New OleDb.OleDbCommand(SQL, connection)
        connection.Open()
        cmd.ExecuteNonQuery()
        connection.Close()
        Status.Text = "The supplier with SupplierID " & suppID.Text & " has been permanently deleted from the Suppliers table."
        suppID.Text = ""
    End Sub

    Protected Sub UpdateEntry_Click(sender As Object, e As ImageClickEventArgs) Handles UpdateEntry.Click
        'creates the conection connects to db
        Dim connection As New OleDb.OleDbConnection
        Dim provider As String
        Dim source As String
        provider = "PROVIDER=Microsoft.Jet.OLEDB.4.0;"
        source = "Data Source=|DataDirectory|DeltaOneMDB.mdb"
        connection.ConnectionString = provider & source
        Dim SQL As String
        SQL = "UPDATE Suppliers SET " & editField.Text & " = '" & editValue.Text & "' WHERE SupplierID = '" & editID.Text & "'"
        Dim cmd As New OleDb.OleDbCommand(SQL, connection)
        connection.Open()
        cmd.ExecuteNonQuery()
        connection.Close()
        Status.Text = "You have successfully edited the column " & editField.Text & " for the supplier " & editID.Text & ""
        editValue.Text = ""
    End Sub

    Protected Sub btnSearch_Click(sender As Object, e As ImageClickEventArgs) Handles btnSearch.Click
        Dim sqlQuery As String = ""
        If txtSearch.Text <> "" Then
            sqlQuery = "SELECT * FROM Suppliers WHERE SupplierID = '" & txtSearch.Text & "'"
            SqlDataSource1.SelectCommand = sqlQuery
            SqlDataSource1.DataBind()
        End If
    End Sub
End Class
