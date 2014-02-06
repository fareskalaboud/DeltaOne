Imports System.Data

Partial Class AddClient
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

    Protected Sub AddEntry_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles AddEntry.Click
        If clientID.Text = "" Or clientName.Text = "" Or clientAddr.Text = "" Or clientPass.Text = "" Or clientTel.Text = "" Or clientEmail.Text = "" Or clientRep.Text = "" Then
            ErrorLabel.Text = "Error: You have left a field blank. Please fill in all the blank fields and try again."
        Else
            If verifyPass.Text <> clientPass.Text Then
                ErrorLabel.Text = "Error: Your passwords are not the same! Please re-enter the passwords and try again."
            Else
                Dim telNo As String = clientTel.Text
                Dim invalidTel As Boolean = False
                'Checks that the data entered in the Telephone Number field only contains numbers.
                For i = 1 To telNo.Length
                    Dim x As String = Mid(telNo, i, 1)
                    If x <> "0" And x <> "1" And x <> "2" And x <> "3" And x <> "4" And x <> "5" And x <> "6" And x <> "7" And x <> "8" And x <> "9" Then invalidTel = True
                Next
                If invalidTel = True Then
                    ErrorLabel.Text = "You have entered an invalid phone number. Please try again."
                Else
                    'creates the conection connects to db
                    Dim connection As New OleDb.OleDbConnection
                    Dim provider As String
                    Dim source As String
                    provider = "PROVIDER=Microsoft.Jet.OLEDB.4.0;"
                    source = "Data Source=|DataDirectory|DeltaOneMDB.mdb"
                    connection.ConnectionString = provider & source
                    Dim SQL As String
                    SQL = "INSERT INTO Clients(ClientID, CPassword, CName, CAddress, CEmail, CTelephone, CRepresentative) " & _
                        "VALUES('" & clientID.Text & "', '" & clientPass.Text & "', '" & clientName.Text & "', '" & clientAddr.Text & "', '" & clientEmail.Text & "', '" & clientTel.Text & "', '" & clientRep.Text & "')"
                    Dim cmd As New OleDb.OleDbCommand(SQL, connection)
                    connection.Open()
                    cmd.ExecuteNonQuery()
                    connection.Close()
                    Status.Text = "The client " & clientName.Text & " has been successfully added to the Clients table."
                    clientID.Text = ""
                    clientEmail.Text = ""
                    clientTel.Text = ""
                    clientName.Text = ""
                    clientPass.Text = ""
                    clientAddr.Text = ""
                    clientRep.Text = ""
                    ErrorLabel.Text = ""
                End If
            End If
        End If
    End Sub

    Protected Sub AddEntry_Click(sender As Object, e As ImageClickEventArgs) Handles AddEntry.Click

    End Sub
End Class
