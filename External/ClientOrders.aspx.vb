Imports System.Data

Partial Class Clients_ClientOrders
    Inherits System.Web.UI.Page

    Protected Sub SignOutButton_Click(sender As Object, e As EventArgs) Handles SignOutButton.Click
        Session("Clients") = ""
        Server.Transfer("..\Login.aspx")
    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Session("Clients") = "" Then Server.Transfer("..\Login.aspx")
        orderClient.Text = Session("Clients")
    End Sub


    Protected Sub Submit_Click(sender As Object, e As EventArgs) Handles Submit.Click
        If orderQty.Text = "" Then
            ErrorLabel.Text = "You have left the Quantity field blank. Please enter the quantity you would like to order."
        Else
            'creates the conection connects to db
            Dim connection As New OleDb.OleDbConnection
            Dim provider As String
            Dim source As String
            provider = "PROVIDER=Microsoft.Jet.OLEDB.4.0;"
            source = "Data Source=|DataDirectory|DeltaOneMDB.mdb"
            connection.ConnectionString = provider & source
            Dim SQL As String
            SQL = "INSERT INTO ClientOrders (ItemID, ClientID, Quantity) VALUES ('" & orderItem.Text & "', '" & orderClient.Text & "', " & orderQty.Text & ")"
            Dim cmd As New OleDb.OleDbCommand(SQL, connection)
            connection.Open()
            cmd.ExecuteNonQuery()
            connection.Close()
            Status.Text = "The order has been submitted."
            orderItem.Text = "66201"
            orderQty.Text = ""
        End If
    End Sub
End Class