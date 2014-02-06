Imports System.Data

Partial Class Accounts_AccountMenu
    Inherits System.Web.UI.Page

    Protected Sub StocksButton_Click(sender As Object, e As EventArgs) Handles StocksButton.Click
        Server.Transfer("..\Stock\StockMenu.aspx")
    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        accDat.Text = System.DateTime.Now.ToString(("dd/MM/yyyy"))
        If Session("Username") = "" Then Server.Transfer("..\Login.aspx")
        If Session("AccessToAccounts") = "False" Then
            Server.Transfer("..\Default.aspx")
        End If
        Dim connection As New OleDb.OleDbConnection
        Dim provider As String
        Dim source As String
        Dim dataSet = New DataSet
        Dim adaptor As New OleDb.OleDbDataAdapter
        provider = "PROVIDER=Microsoft.Jet.OLEDB.4.0;"
        source = "Data Source=|DataDirectory|DeltaOneMDB.mdb"
        connection.ConnectionString = provider & source
        Dim SQL As String
        SQL = "SELECT CurrentBalance FROM CurrentBalance WHERE ID = 1"
        adaptor = New OleDb.OleDbDataAdapter(SQL, connection)
        adaptor.Fill(dataSet, "Balance")
        Dim balance As Integer = dataSet.Tables("Balance").Rows(0).Item(0)
        accCnt.Text = balance
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
        If accAdd.Text = "" Or accRsA.Text = "" Or accDdt.Text = "" Or accRsD.Text = "" Or accNts.Text = "" Then
            ErrorLabel.Text = "Error: You have left a field (or more) blank. Please fill in all the blanks. If a blank does not require information, please enter either 0 or N/A."
        Else
            'creates the conection connects to db
            Dim connection As New OleDb.OleDbConnection
            Dim provider As String
            Dim source As String
            provider = "PROVIDER=Microsoft.Jet.OLEDB.4.0;"
            source = "Data Source=|DataDirectory|DeltaOneMDB.mdb"
            connection.ConnectionString = provider & source
            Dim SQL As String
            SQL = "INSERT INTO AccountBalance (AddTo, ReasonAdd, DeductFrom, ReasonDeduct, Notes, TransactionDate) " & _
                "VALUES (" & accAdd.Text & ", '" & accRsA.Text & "', " & accDdt.Text & ", '" & accRsD.Text & "', '" & accNts.Text & "', '" & accDat.Text & "')"
            Dim cmd As New OleDb.OleDbCommand(SQL, connection)
            connection.Open()
            cmd.ExecuteNonQuery()
            Dim adaptor As New OleDb.OleDbDataAdapter
            Dim dataSet = New DataSet
            SQL = "SELECT CurrentBalance FROM CurrentBalance WHERE ID = 1"
            adaptor = New OleDb.OleDbDataAdapter(SQL, connection)
            adaptor.Fill(dataSet, "Balance")
            Dim balance As Integer = dataSet.Tables("Balance").Rows(0).Item(0)
            Dim addTo As Integer = accAdd.Text
            Dim deductFrom As Integer = accDdt.Text
            Dim difference As Integer = addTo - deductFrom
            balance = balance + difference
            SQL = "UPDATE CurrentBalance SET CurrentBalance = " & balance & " WHERE ID = 1"
            Dim cmd2 As New OleDb.OleDbCommand(SQL, connection)
            cmd2.ExecuteNonQuery()
            connection.Close()
            Status.Text = "The transaction has been successfully recorded in the Account Balance table."
            accAdd.Text = ""
            accRsA.Text = ""
            accRsD.Text = ""
            accNts.Text = ""
            accDdt.Text = ""
            ErrorLabel.Text = ""
        End If
    End Sub
End Class
