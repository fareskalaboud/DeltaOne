Imports System.Data

Partial Class Login
    Inherits System.Web.UI.Page

    Protected Sub btnLogin_Click(ByVal sender As System.Object, _
                                ByVal e As System.EventArgs) _
                                  Handles btnLogin.Click
        Dim userID As String = txtUserID.Text
        Dim attemptSQL As Boolean = False
        For i = 1 To userID.Length
            If Mid(userID, i, 1) = "'" Or Mid(userID, i, 1) = ";" Or Mid(userID, i, 2) = "OR" Or Mid(userID, i, 1) = "=" Or Mid(userID, i, 4) = "DROP" Then
                attemptSQL = True
            End If
        Next

        Dim pass As String = txtPassword.Text
        For i = 1 To pass.Length
            If Mid(pass, i, 1) = "'" Or Mid(pass, i, 1) = ";" Or Mid(pass, i, 2) = "OR" Or Mid(pass, i, 1) = "=" Or Mid(pass, i, 4) = "DROP" Then
                attemptSQL = True
            End If
        Next

        If attemptSQL = True Then
            Verify.Text = "Invalid characters detected. Please try again and ensure input data."
        Else
            'The beginning If statement.
            If listLogin.Text = "Employee" Then
                'The connection to the db.
                Dim connection As New OleDb.OleDbConnection
                Dim provider As String
                Dim source As String
                Dim SQL As String
                Dim adaptor As New OleDb.OleDbDataAdapter
                Dim dataSet = New DataSet
                provider = "PROVIDER=Microsoft.Jet.OLEDB.4.0;"
                source = "Data Source=|DataDirectory|DeltaOneMDB.mdb"
                connection.ConnectionString = provider & source
                'Opening the connection.
                connection.Open()
                'Query to find the data.
                SQL = "SELECT UserID, UPassword " & _
                            "FROM Users " & _
                            "WHERE UserID = '" & txtUserID.Text & "'" _
                               & "AND UPassword = '" & txtPassword.Text & "'"
                adaptor = New OleDb.OleDbDataAdapter(SQL, connection)
                'Assign the query result to a dataset.
                adaptor.Fill(dataSet, "Users")
                'Compare the data in the textboxes to the query results.
                Dim row As DataRow
                Dim check As Integer = 0
                For Each row In dataSet.Tables("Users").Rows
                    check += 1
                Next
                'If a match is found...
                If check = 0 Then Verify.Text = "Username and/or Password not recognized."
                If check > 0 Then
                    Verify.Text = "Welcome."
                    Session("Username") = txtUserID.Text
                    SQL = "SELECT UAccounts FROM Users WHERE UserID = '" & Session("Username") & "'"
                    adaptor = New OleDb.OleDbDataAdapter(SQL, connection)
                    adaptor.Fill(dataSet, "Accounts")
                    Dim accessToAcc As String = dataSet.Tables("Accounts").Rows(0).Item(0)
                    If accessToAcc = "No" Then
                        Session("AccessToAccounts") = "False"
                    ElseIf accessToAcc = "Yes" Then
                        Session("AccessToAccounts") = "True"
                    End If
                    Server.Transfer("Default.aspx")
                End If
                'close DB connection
                connection.Close()
            ElseIf listLogin.Text = "Client" Then
                Dim connection As New OleDb.OleDbConnection
                Dim provider As String
                Dim source As String
                Dim SQL As String
                Dim adaptor As New OleDb.OleDbDataAdapter
                Dim dataSet = New DataSet
                provider = "PROVIDER=Microsoft.Jet.OLEDB.4.0;"
                source = "Data Source=|DataDirectory|DeltaOneMDB.mdb"
                connection.ConnectionString = provider & source
                connection.Open()
                SQL = "SELECT ClientID, CPassword " & _
                            "FROM Clients " & _
                            "WHERE ClientID = '" & txtUserID.Text & "'" _
                               & "AND CPassword = '" & txtPassword.Text & "'"
                adaptor = New OleDb.OleDbDataAdapter(SQL, connection)
                adaptor.Fill(dataSet, "Clients")
                Dim row As DataRow
                Dim check As Integer = 0
                For Each row In dataSet.Tables("Clients").Rows
                    check += 1
                Next
                If check = 0 Then Verify.Text = "Username and/or Password not recognized."
                If check > 0 Then
                    Verify.Text = "Welcome."
                    Session("Clients") = txtUserID.Text
                    Server.Transfer("External\ClientOrders.aspx")
                End If
                connection.Close()
            ElseIf listLogin.Text = "Supplier" Then
                Dim connection As New OleDb.OleDbConnection
                Dim provider As String
                Dim source As String
                Dim SQL As String
                Dim adaptor As New OleDb.OleDbDataAdapter
                Dim dataSet = New DataSet
                provider = "PROVIDER=Microsoft.Jet.OLEDB.4.0;"
                source = "Data Source=|DataDirectory|DeltaOneMDB.mdb"
                connection.ConnectionString = provider & source
                connection.Open()
                SQL = "SELECT SupplierID, SPassword " & _
                            "FROM Suppliers " & _
                            "WHERE SupplierID = '" & txtUserID.Text & "'" _
                               & "AND SPassword = '" & txtPassword.Text & "'"
                adaptor = New OleDb.OleDbDataAdapter(SQL, connection)
                adaptor.Fill(dataSet, "Suppliers")
                Dim row As DataRow
                Dim check As Integer = 0
                For Each row In dataSet.Tables("Suppliers").Rows
                    check += 1
                Next
                If check = 0 Then Verify.Text = "Username and/or Password not recognized."
                If check > 0 Then
                    Verify.Text = "Welcome."
                    Session("Suppliers") = txtUserID.Text
                    Server.Transfer("External\SupplierPending.aspx")
                End If
                connection.Close()
            End If
        End If
    End Sub

    Protected Sub btnClear_Click(sender As Object, e As EventArgs) Handles btnClear.Click
        txtPassword.Text = ""
        txtUserID.Text = ""
    End Sub
End Class