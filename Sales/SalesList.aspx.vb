Imports System.Data
Imports System.Data.SqlClient

Partial Class PurchaseLog
    Inherits System.Web.UI.Page


    Protected Sub StocksButton_Click(sender As Object, e As EventArgs) Handles StocksButton.Click
        Server.Transfer("..\Stock\StockMenu.aspx")
    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Session("Username") = "" Then Server.Transfer("..\Login.aspx")
        If Session("AccessToAccounts") = "False" Then
            AccountsButton.Visible = False
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
        SQL = "DELETE FROM Sales WHERE SaleID = " & saleID.Text & ""
        Dim cmd As New OleDb.OleDbCommand(SQL, connection)
        connection.Open()
        cmd.ExecuteNonQuery()
        connection.Close()
        Status.Text = "The sale with the ID " & saleID.Text & " has been permanently deleted from the Sales table."
    End Sub

    Protected Sub btnSearch_Click(sender As Object, e As ImageClickEventArgs) Handles btnSearch.Click
        'SQLquery As String
        Dim sqlQuery As String = ""
        'If radiobuttonClient is checked Then
        If radClient.Checked = True Then
            'SQLquery = extract data from table where the client = text in the search box
            sqlQuery = "SELECT * FROM Sales WHERE ClientID = '" & txtSearch.Text & "'"
            '	SQLDataSource's SQL = SQLquery
            SqlDataSource1.SelectCommand = sqlQuery
            SqlDataSource1.DataBind()
            'ElseIf radiobuttonItem is checked Then
        ElseIf radItem.Checked = True Then
            'SQLquery = extract data from table where the item = text in the search box
            sqlQuery = "SELECT * FROM Sales WHERE ItemID = '" & txtSearch.Text & "'"
            '	SQLDataSource's SQL = SQLquery
            SqlDataSource1.SelectCommand = sqlQuery
            SqlDataSource1.DataBind()
            'ElseIf radiobuttonUser is checked Then
        ElseIf radUser.Checked = True Then
            'SQLquery = extract data from table where the user = text in the search box
            sqlQuery = "SELECT * FROM Sales WHERE UserID = '" & txtSearch.Text & "'"
            '	SQLDataSource's SQL = SQLquery
            SqlDataSource1.SelectCommand = sqlQuery
            SqlDataSource1.DataBind()
        ElseIf radUser.Checked = False And radClient.Checked = False And radItem.Checked = False Then
            ErrorLabel.Text = "Error: You have not chosen a search criteria."
        End If
        ErrorLabel.Text = ""
    End Sub
End Class