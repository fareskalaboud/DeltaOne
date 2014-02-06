Imports System.Data

Partial Class Add_a_Purchase
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

    Protected Sub AddEntry_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles AddEntry.Click
        If suppID.Text = "" Or suppName.Text = "" Or suppAddr.Text = "" Or suppTel.Text = "" Or suppPass.Text = "" Or suppRep.Text = "" Or suppEmail.Text = "" Then
            ErrorLabel.Text = "Error: You have left a field blank! Please fill in all of the blank fields and try again."
        Else
            Dim tel As String = suppTel.Text
            Dim valid As Boolean = True
            'Checks that the data entered in the Quantity field only contains numbers.
            For i = 1 To tel.Length
                Dim x As String = Mid(tel, i, 1)
                If x <> "0" And x <> "1" And x <> "2" And x <> "3" And x <> "4" And x <> "5" And x <> "6" And x <> "7" And x <> "8" And x <> "9" Then valid = False
            Next
            If valid = False Then
                ErrorLabel.Text = "Error: You have entered an invalid phone number! Please make sure you entry contains only numbers and try again."
            Else
                If verifyPass.Text <> suppPass.Text Then
                    ErrorLabel.Text = "Error: Your passwords are not the same! Please re-enter the passwords and try again."
                Else
                    'creates the conection connects to db
                    Dim connection As New OleDb.OleDbConnection
                    Dim provider As String
                    Dim source As String
                    provider = "PROVIDER=Microsoft.Jet.OLEDB.4.0;"
                    source = "Data Source=|DataDirectory|DeltaOneMDB.mdb"
                    connection.ConnectionString = provider & source
                    Dim SQL As String
                    SQL = "INSERT INTO Suppliers (SupplierID, SPassword, SName, SAddress, SEmail, STelephone, SRepresentative)" & _
                        " VALUES ('" & suppID.Text & "', '" & suppPass.Text & "', '" & suppName.Text & "', '" & suppAddr.Text & "', '" & suppEmail.Text & "', '" & suppTel.Text & "', '" & suppRep.Text & "')"
                    Dim cmd As New OleDb.OleDbCommand(SQL, connection)
                    connection.Open()
                    cmd.ExecuteNonQuery()
                    connection.Close()
                    Status.Text = "The supplier " & suppName.Text & " has been successfully added to the Suppliers table."
                    suppID.Text = ""
                    suppEmail.Text = ""
                    suppTel.Text = ""
                    suppName.Text = ""
                    suppAddr.Text = ""
                    suppRep.Text = ""
                    ErrorLabel.Text = ""
                End If
            End If
        End If
    End Sub
End Class
