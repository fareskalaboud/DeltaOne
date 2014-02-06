Imports System.Data

Partial Class Clients_SignUpList
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

    Protected Sub AddEntry_Click(sender As Object, e As ImageClickEventArgs) Handles AddEntry.Click
        'creates the conection connects to db
        Dim connection As New OleDb.OleDbConnection
        Dim provider As String
        Dim source As String
        provider = "PROVIDER=Microsoft.Jet.OLEDB.4.0;"
        source = "Data Source=|DataDirectory|DeltaOneMDB.mdb"
        connection.ConnectionString = provider & source
        Dim SQL As String
        SQL = "INSERT INTO Clients (ClientID, CPassword, CName, CAddress, CEmail, CTelephone, CRepresentative) " & _
            "SELECT ClientID,CPassword,CName,CAddress,CEmail,CTelephone,CRepresentative FROM ClientSignUps WHERE ClientID = '" & clientID.Text & "'"
        Dim cmdIns As New OleDb.OleDbCommand(SQL, connection)
        connection.Open()
        cmdIns.ExecuteNonQuery()
        SQL = "DELETE FROM ClientSignUps WHERE ClientID = '" & clientID.Text & "'"
        Dim cmdDel As New OleDb.OleDbCommand(SQL, connection)
        cmdDel.ExecuteNonQuery()
        connection.Close()
        Status.Text = "The client was successfully added to the Clients table."
    End Sub
End Class
