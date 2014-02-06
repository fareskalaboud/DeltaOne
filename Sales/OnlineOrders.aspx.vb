Imports System.Data

Partial Class Sales_OnlineOrders
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
        SQL = "DELETE FROM ClientOrders WHERE OrderNumber = " & orderID.Text & ""
        Dim cmd As New OleDb.OleDbCommand(SQL, connection)
        connection.Open()
        cmd.ExecuteNonQuery()
        connection.Close()
        Status.Text = "The order with the ID " & orderID.Text & " has been permanently deleted from the Client Orders table."
        ErrorLabel.Text = ""
    End Sub

    Protected Sub UpdateEntry_Click(sender As Object, e As ImageClickEventArgs) Handles UpdateEntry.Click
        Dim price As String = orderPrice.Text
        Dim valid As Boolean = True
        'Checks that the data entered in the Telephone Number field only contains numbers.
        For i = 1 To price.Length
            Dim x As String = Mid(price, i, 1)
            If x <> "0" And x <> "1" And x <> "2" And x <> "3" And x <> "4" And x <> "5" And x <> "6" And x <> "7" And x <> "8" And x <> "9" Then valid = False
        Next
        If valid = False Then
            ErrorLabel.Text = "Error: You've entered an invalid price! Please make sure your entry contains only numbers and try again."
        Else
            Dim connection As New OleDb.OleDbConnection
            Dim provider As String
            Dim source As String
            Dim adaptor As New OleDb.OleDbDataAdapter
            Dim dataSet = New DataSet
            provider = "PROVIDER=Microsoft.Jet.OLEDB.4.0;"
            source = "Data Source=|DataDirectory|DeltaOneMDB.mdb"
            connection.ConnectionString = provider & source
            Dim SQL As String
            connection.Open()
            'Extract the quantity, ItemID and ClientID
            SQL = "SELECT ItemID, ClientID, Quantity FROM ClientOrders WHERE OrderNumber = " & orderIDA.Text
            adaptor = New OleDb.OleDbDataAdapter(SQL, connection)
            adaptor.Fill(dataSet, "QtyItem")
            'Assign them to variables
            Dim deductQty As Integer = dataSet.Tables("QtyItem").Rows(0).Item(2)
            Dim item As String = dataSet.Tables("QtyItem").Rows(0).Item(0)
            Dim client As String = dataSet.Tables("QtyItem").Rows(0).Item(1)
            'Find the quantity in stock of the item
            SQL = "SELECT Quantity FROM Stock WHERE ItemID = '" & item & "'"
            adaptor = New OleDb.OleDbDataAdapter(SQL, connection)
            adaptor.Fill(dataSet, "Stock")
            'Check for item availablility
            Dim availableQty As Integer = dataSet.Tables("Stock").Rows(0).Item(0)
            If availableQty < deductQty Then
                ErrorLabel.Text = "Error: The amount you are trying to sell is larger than the amount available in stock!"
            Else
                'Update the quantity
                Dim newQty As Integer = availableQty - deductQty
                SQL = "UPDATE Stock SET Quantity = " & newQty & " WHERE ItemID = '" & item & "'"
                Dim cmd2 As New OleDb.OleDbCommand(SQL, connection)
                cmd2.ExecuteNonQuery()
                'Record the sale
                SQL = "INSERT INTO Sales (SaleDate, ItemID, UserID, ClientID, Quantity, Price) VALUES ('" & DateAndTime.Now() & "', '" & item & "', '" & Session("Username") & "', '" & client & "', " & deductQty & ", " & orderPrice.Text & ")"
                Dim cmd As New OleDb.OleDbCommand(SQL, connection)
                cmd.ExecuteNonQuery()
            End If
            'Add the profit to the current balance
            SQL = "SELECT CurrentBalance FROM CurrentBalance WHERE ID = 1"
            adaptor = New OleDb.OleDbDataAdapter(SQL, connection)
            adaptor.Fill(dataSet, "CurrentBalance")
            Dim current As Integer = dataSet.Tables("CurrentBalance").Rows(0).Item(0)
            Dim addTo As Integer = orderPrice.Text
            Dim newBalance As Integer = current + addTo
            SQL = "UPDATE CurrentBalance SET CurrentBalance = " & newBalance & " WHERE ID = 1"
            'Delete the order from the Online Orders list since it's been moved to Sales.
            Dim cmdU As New OleDb.OleDbCommand(SQL, connection)
            cmdU.ExecuteNonQuery()
            SQL = "DELETE FROM ClientOrders WHERE OrderNumber = " & orderID.Text
            Dim cmdD As New OleDb.OleDbCommand(SQL, connection)
            cmdD.ExecuteNonQuery()
            connection.Close()
            Status.Text = "The sale has been successfully registered in the Sales table."
        End If
    End Sub
End Class
