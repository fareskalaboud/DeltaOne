Imports System.Data

Partial Class External_SupplierPending
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Session("Suppliers") = "" Then Server.Transfer("..\Login.aspx")
        supplierSession.Text = Session("Suppliers")
    End Sub

    Protected Sub SignOutButton_Click(sender As Object, e As EventArgs) Handles SignOutButton.Click
        Session("Suppliers") = ""
        Server.Transfer("..\Login.aspx")
    End Sub

    Protected Sub btnConfirm_Click(sender As Object, e As EventArgs) Handles btnConfirm.Click
        Dim connection As New OleDb.OleDbConnection
        Dim provider As String
        Dim source As String
        provider = "PROVIDER=Microsoft.Jet.OLEDB.4.0;"
        source = "Data Source=|DataDirectory|DeltaOneMDB.mdb"
        connection.ConnectionString = provider & source
        Dim SQL As String
        Dim adaptor As New OleDb.OleDbDataAdapter
        Dim DataSet As New DataSet
        connection.Open()
        SQL = "UPDATE Purchases SET Status = '" & orderStatus.Text & "' WHERE PurchaseID = " & orderID.Text
        Dim cmdStatus As New OleDb.OleDbCommand(SQL, connection)
        cmdStatus.ExecuteNonQuery()
        If orderStatus.Text = "Confirmed" Then
            'Read balance
            SQL = "SELECT CurrentBalance FROM CurrentBalance WHERE ID = 1"
            adaptor = New OleDb.OleDbDataAdapter(SQL, connection)
            adaptor.Fill(DataSet, "Balance")
            Dim balance As Integer = DataSet.Tables("Balance").Rows(0).Item(0)
            'Read purchase cost
            SQL = "SELECT Price, Quantity, ItemID FROM Purchases WHERE PurchaseID = " & orderID.Text
            adaptor = New OleDb.OleDbDataAdapter(SQL, connection)
            adaptor.Fill(DataSet, "Purchases")
            Dim cost As Integer = DataSet.Tables("Purchases").Rows(0).Item(0)
            Dim newBalance As Integer = balance - cost
            SQL = "UPDATE CurrentBalance SET CurrentBalance = " & newBalance & " WHERE ID = 1"
            Dim cmdBalance As New OleDb.OleDbCommand(SQL, connection)
            cmdBalance.ExecuteNonQuery()
            'Update item quantity
            Dim addQty As Integer = DataSet.Tables("Purchases").Rows(0).Item(1)
            Dim item As String = DataSet.Tables("Purchases").Rows(0).Item(2)
            SQL = "SELECT Quantity FROM Stock WHERE ItemID = '" & item & "'"
            adaptor = New OleDb.OleDbDataAdapter(SQL, connection)
            adaptor.Fill(DataSet, "Stock")
            Dim cntQty As Integer = DataSet.Tables("Stock").Rows(0).Item(0)
            Dim newQty As Integer = addQty + cntQty
            SQL = "UPDATE Stock SET Quantity = " & newQty & " WHERE ItemID = '" & item & "'"
            Dim cmdQty As New OleDb.OleDbCommand(SQL, connection)
            cmdQty.ExecuteNonQuery()
        End If
        Status.Text = "The status of PurchaseID " & orderID.Text & " has been updated."
        connection.Close()
    End Sub
End Class
