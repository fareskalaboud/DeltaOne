Imports System.Data

Partial Class External_ClientSignup
    Inherits System.Web.UI.Page

    Protected Sub btnSignUp_Click(sender As Object, e As EventArgs) Handles btnSignUp.Click
        If clientVerify.Text <> clientPass.Text Then
            ErrorLabel.Text = "Your passwords are not the same! Please re-enter your password and try again."
        Else
            Dim telNo As String = clientTel.Text
            Dim invalidTel As Boolean = False
            'Checks that the data entered in the Telephone Number field only contains numbers.
            For i = 1 To telNo.Length
                Dim x As String = Mid(telNo, i, 1)
                If x <> "0" And x <> "1" And x <> "2" And x <> "3" And x <> "4" And x <> "5" And x <> "6" And x <> "7" And x <> "8" And x <> "9" Then invalidTel = True
            Next
            If invalidTel = True Then
                ErrorLabel.Text = "The telephone number you have entered is invalid. Please enter a correct telephone number."
            Else
                'creates the conection connects to db
                Dim connection As New OleDb.OleDbConnection
                Dim provider As String
                Dim source As String
                provider = "PROVIDER=Microsoft.Jet.OLEDB.4.0;"
                source = "Data Source=|DataDirectory|DeltaOneMDB.mdb"
                connection.ConnectionString = provider & source
                Dim SQL As String
                If clientCode.Text = "delta1client" Then
                    SQL = "INSERT INTO ClientSignUps (ClientID, CPassword, CName, CAddress, CEmail, CTelephone, CRepresentative) " & _
                        "VALUES ('" & clientID.Text & "', '" & clientPass.Text & "', '" & clientName.Text & "', '" & clientAddr.Text & "', '" & clientEmail.Text & "', '" & clientTel.Text & "', '" & clientRep.Text & "')"
                    Dim cmd As New OleDb.OleDbCommand(SQL, connection)
                    connection.Open()
                    cmd.ExecuteNonQuery()
                    connection.Close()
                    Status.Text = "Your sign up details have been successfully sent for approval."
                    clientID.Text = ""
                    clientPass.Text = ""
                    clientEmail.Text = ""
                    clientTel.Text = ""
                    clientName.Text = ""
                    clientAddr.Text = ""
                    clientRep.Text = ""
                    clientCode.Text = ""
                    ErrorLabel.Text = ""
                Else
                    Status.Text = "Your invite code is incorrect. Please contact Delta One +96626644477 for the correct invite code."
                End If
            End If
        End If
    End Sub


    Protected Sub btnBack_Click(sender As Object, e As EventArgs) Handles btnBack.Click
        Server.Transfer("..\Login.aspx")
    End Sub

End Class
