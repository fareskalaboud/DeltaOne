﻿Imports System.Data

Partial Class Accounts_AddUser
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
        If userID.Text = "" Or userPass.Text = "" Or userFN.Text = "" Or userSN.Text = "" Or userAcc.Text = "" Then
            ErrorLabel.Text = "You have left a field blank. Please fill all of the fields before adding a user."
        ElseIf vpass.Text <> userPass.Text Then
            ErrorLabel.Text = "Passwords are not the same. Please verify password. "
        Else
            'creates the conection connects to db
            Dim connection As New OleDb.OleDbConnection
            Dim provider As String
            Dim source As String
            provider = "PROVIDER=Microsoft.Jet.OLEDB.4.0;"
            source = "Data Source=|DataDirectory|DeltaOneMDB.mdb"
            connection.ConnectionString = provider & source
            Dim SQL As String
            SQL = "INSERT INTO Users (UserID,  UPassword, UForename, USurname, UAccounts)" & _
                "VALUES ('" & userID.Text & "', '" & userPass.Text & "', '" & userFN.Text & "', '" & userSN.Text & "', '" & userAcc.Text & "')"
            Dim cmd As New OleDb.OleDbCommand(SQL, connection)
            connection.Open()
            cmd.ExecuteNonQuery()
            connection.Close()
            Status.Text = "The user " & userFN.Text & " " & userSN.Text & " has been successfully added to the Users table and can successfully log in."
            userID.Text = ""
            userPass.Text = ""
            userAcc.Text = "No"
            userFN.Text = ""
            userSN.Text = ""
            ErrorLabel.Text = ""
        End If
    End Sub
End Class
