Imports System.Data

Partial Class ChangePass
    Inherits System.Web.UI.Page

    Protected Sub StocksButton_Click(sender As Object, e As EventArgs) Handles StocksButton.Click
        Server.Transfer("Stock\StockMenu.aspx")
    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Session("Username") = "" Then Server.Transfer("Login.aspx")
        If Session("AccessToAccounts") = "False" Then
            AccountsButton.Visible = False
        End If
        Session.Timeout = 10
        userSession.Text = Session("Username")
    End Sub

    Protected Sub PurchasesButton_Click(sender As Object, e As EventArgs) Handles PurchasesButton.Click
        Server.Transfer("Purchases\PurchaseMenu.aspx")
    End Sub

    Protected Sub SignOutButton_Click(sender As Object, e As EventArgs) Handles SignOutButton.Click
        Session("Username") = ""
        Server.Transfer("Login.aspx")
    End Sub

    Protected Sub SalesButton_Click(sender As Object, e As EventArgs) Handles SalesButton.Click
        Server.Transfer("Sales\SalesMenu.aspx")
    End Sub

    Protected Sub AccountsButton_Click(sender As Object, e As EventArgs) Handles AccountsButton.Click
        Server.Transfer("Accounts\AccountMenu.aspx")
    End Sub

    Protected Sub SuppliersButton_Click(sender As Object, e As EventArgs) Handles SuppliersButton.Click
        Server.Transfer("Suppliers\SupplierMenu.aspx")
    End Sub


    Protected Sub ClientsButton_Click(sender As Object, e As EventArgs) Handles ClientsButton.Click
        Server.Transfer("Clients\ClientMenu.aspx")
    End Sub

    Protected Sub HomeButton_Click(sender As Object, e As EventArgs) Handles HomeButton.Click
        Server.Transfer("Default.aspx")
    End Sub

    Protected Sub UpdateEntry_Click(sender As Object, e As ImageClickEventArgs) Handles UpdateEntry.Click
        Dim pass As String = newPass.Text
        Dim attemptP As Boolean = False
        For i = 1 To pass.Length
            If Mid(pass, i, 1) = "'" Or Mid(pass, i, 1) = ";" Or Mid(pass, i, 2) = "OR" Or Mid(pass, i, 1) = "=" Or Mid(pass, i, 4) = "DROP" Then
                attemptP = True
            End If
        Next
        Dim emptyField As Boolean = False
        If current.Text = "" Or newPass.Text = "" Or verify.Text = "" Then emptyField = True
        If attemptP = True Then
            ErrorLabel.Text = "You may not include invalid characters or phrases into your password. Please try again and include only letters and numbers."
        ElseIf emptyField = True Then
            ErrorLabel.Text = "You have left a field blank. Please enter something in all of the fields then try again."
        ElseIf attemptP = False And emptyField = False Then
            If newPass.Text <> verify.Text Then
                ErrorLabel.Text = "The contents of the fields ""New Password"" and ""Verify Password"" are not equal. Please try again and verify your password correctly."
            Else
                'creates the conection connects to db
                Dim connection As New OleDb.OleDbConnection
                Dim provider As String
                Dim source As String
                Dim adaptor As New OleDb.OleDbDataAdapter
                Dim DataSet As New DataSet
                provider = "PROVIDER=Microsoft.Jet.OLEDB.4.0;"
                source = "Data Source=|DataDirectory|DeltaOneMDB.mdb"
                connection.ConnectionString = provider & source
                Dim SQL As String
                connection.Open()
                SQL = "SELECT UPassword FROM Users WHERE UserID = '" & userSession.Text & "'"
                adaptor = New OleDb.OleDbDataAdapter(SQL, connection)
                adaptor.Fill(DataSet, "Password")
                Dim currentPass As String = DataSet.Tables("Password").Rows(0).Item(0)
                If currentPass <> current.Text Then
                    ErrorLabel.Text = "Your current password is incorrect. Please try again."
                ElseIf currentPass = current.Text Then
                    SQL = "UPDATE Users SET UPassword = '" & newPass.Text & "' WHERE UserID = '" & userSession.Text & "'"
                    Dim cmdPass As New OleDb.OleDbCommand(SQL, connection)
                    cmdPass.ExecuteNonQuery()
                    connection.Close()
                    Status.Text = "Your password has been successfully changed."
                End If
            End If
        End If
    End Sub
End Class
