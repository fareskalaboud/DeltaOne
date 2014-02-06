Imports System.Data

Partial Class AddPurchase
    Inherits System.Web.UI.Page

    Protected Sub StocksButton_Click(sender As Object, e As EventArgs) Handles StocksButton.Click
        Server.Transfer("..\Stock\StockMenu.aspx")
    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        purchUser.Text = Session("Username")
        purchDate.Text = DateAndTime.Now()
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

    Protected Sub AddEntry_Click(sender As Object, e As ImageClickEventArgs) Handles AddEntry.Click
        Dim qty As String = purchQty.Text
        Dim prc As String = purchPrice.Text
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
            'Open connection
            connection.Open()
            Dim SQL As String
            'SQL = Extract available balance from table
            SQL = "SELECT CurrentBalance FROM CurrentBalance WHERE ID = 1"
            adaptor = New OleDb.OleDbDataAdapter(SQL, connection)
            adaptor.Fill(dataSet, "Balance")
            Dim balance As Integer = dataSet.Tables("Balance").Rows(0).Item(0)
            'Read purchase cost
            Dim cost As Integer = purchPrice.Text
            'If purchase cost > current balance
            If cost > balance Then
                'Display error message
                ErrorLabel.Text = "Error: You do not have enough funds in your account balance to make this purchase."
            Else
                'SQL = Update Qty (add)
                SQL = "SELECT Quantity FROM Stock WHERE ItemID = '" & purchItem.Text & "'"
                adaptor = New OleDb.OleDbDataAdapter(SQL, connection)
                adaptor.Fill(dataSet, "Quantity")
                Dim availableQty As Integer = dataSet.Tables("Quantity").Rows(0).Item(0)
                Dim purchaseQty As Integer = purchQty.Text
                Dim newQty As Integer = availableQty + purchaseQty
                SQL = "UPDATE Stock SET Quantity = " & newQty & " WHERE ItemID = '" & purchItem.Text & "'"
                Dim cmdAdd As New OleDb.OleDbCommand(SQL, connection)
                cmdAdd.ExecuteNonQuery()
                'SQL = Insert data into table
                SQL = "INSERT INTO Purchases (PurchaseDate, ItemID, UserID, SupplierID, Quantity, Price, Status) " & _
                    "VALUES ('" & purchDate.Text & "', '" & purchItem.Text & "', '" & purchUser.Text & "', '" & purchSupplier.Text & "', " & purchQty.Text & ", " & purchPrice.Text & ", '" & purchStatus.Text & "')"
                Dim cmdInsert As New OleDb.OleDbCommand(SQL, connection)
                cmdInsert.ExecuteNonQuery()
                'SQL = Update balance (deduct purchase cost)
                If purchStatus.Text = "Confirmed" Then
                    Dim newBalance As Integer = balance - cost
                    SQL = "UPDATE CurrentBalance SET CurrentBalance = " & newBalance & " WHERE ID = 1"
                    Dim cmdBalance As New OleDb.OleDbCommand(SQL, connection)
                    cmdBalance.ExecuteNonQuery()
                End If        
                Status.Text = "The purchase has been successfully registered in the Purchases table."
                purchItem.Text = "66201"
                purchUser.Text = Session("UserName")
                purchQty.Text = ""
                purchPrice.Text = ""
            End If
            connection.Close()
        End If
    End Sub
End Class
