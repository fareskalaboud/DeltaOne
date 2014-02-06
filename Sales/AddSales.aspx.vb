Imports System.Data

Partial Class Add_a_Purchase
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
        saleDate.Text = DateAndTime.Now()
        saleUser.Text = Session("Username")
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

    Protected Sub AddEntry_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles AddEntry.Click
        Dim qty As String = saleQty.Text
        Dim prc As String = salePrice.Text
        Dim valid As Boolean = True
        'Checks that the data entered in the Quantity field only contains numbers.
        For i = 1 To qty.Length
            Dim x As String = Mid(qty, i, 1)
            If x <> "0" And x <> "1" And x <> "2" And x <> "3" And x <> "4" And x <> "5" And x <> "6" And x <> "7" And x <> "8" And x <> "9" Then valid = False
        Next
        'Checks that the data entered in the Price field only contains numbers.
        For i = 1 To prc.Length
            Dim x As String = Mid(prc, i, 1)
            If x <> "0" And x <> "1" And x <> "2" And x <> "3" And x <> "4" And x <> "5" And x <> "6" And x <> "7" And x <> "8" And x <> "9" Then valid = False
        Next
        If valid = False Then
            ErrorLabel.Text = "Error: You have entered an invalid entry in either the quantity or price fields. Please make sure your entries only contain numbers and try again."
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
            'Check if the quantity is available
            SQL = "SELECT Quantity FROM Stock WHERE ItemID = '" & saleItem.Text & "'"
            connection.Open()
            adaptor = New OleDb.OleDbDataAdapter(SQL, connection)
            adaptor.Fill(dataSet, "Stock")
            Dim availableQty As Integer = dataSet.Tables("Stock").Rows(0).Item(0)
            Dim deductQty As Integer = saleQty.Text
            If availableQty < deductQty Then
                'Display an error message
                ErrorLabel.Text = "Error: The amount you are trying to sell is larger than the amount available in stock!"
            ElseIf availableQty >= deductQty Then
                'Update the quantity
                Dim newQty As Integer = availableQty - deductQty
                SQL = "UPDATE Stock SET Quantity = " & newQty & " WHERE ItemID = '" & saleItem.Text & "'"
                Dim cmdUpdate As New OleDb.OleDbCommand(SQL, connection)
                cmdUpdate.ExecuteNonQuery()
                'Add the information into the table
                SQL = "INSERT INTO Sales (SaleDate, ItemID, UserID, ClientID, Quantity, Price) VALUES ('" & saleDate.Text & "', '" & saleItem.Text & "', '" & saleUser.Text & "', '" & saleClt.Text & "', " & saleQty.Text & ", " & salePrice.Text & ")"
                Dim cmdInsert As New OleDb.OleDbCommand(SQL, connection)
                cmdInsert.ExecuteNonQuery()
                saleQty.Text = newQty
                SQL = "SELECT CurrentBalance FROM CurrentBalance WHERE ID = 1"
                adaptor = New OleDb.OleDbDataAdapter(SQL, connection)
                adaptor.Fill(dataSet, "CurrentBalance")
                Dim current As Integer = dataSet.Tables("CurrentBalance").Rows(0).Item(0)
                Dim addTo As Integer = salePrice.Text
                Dim newBalance As Integer = current + addTo
                SQL = "UPDATE CurrentBalance SET CurrentBalance = " & newBalance & " WHERE ID = 1"
                Dim cmdBalance As New OleDb.OleDbCommand(SQL, connection)
                cmdBalance.ExecuteNonQuery()
                connection.Close()
                Status.Text = "The sale has been successfully registered in the Sales table."
                saleItem.Text = "66201"
                saleUser.Text = Session("UserName")
                salePrice.Text = ""
                ErrorLabel.Text = ""
            End If
        End If
    End Sub

End Class
