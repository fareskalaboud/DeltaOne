Imports System.Data

Partial Class Accounts_AccountMenu
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
        If empName.Text = "" Or empPos.Text = "" Or empEmail.Text = "" Or empMob.Text = "" Or empLnd.Text = "" Or empAdd.Text = "" Or empSlr.Text = "" Then
            ErrorLabel.Text = "Error: A field has been left blank. Please fill in all the fields."
        Else
            Dim mob As String = empMob.Text
            Dim land As String = empLnd.Text
            Dim valid As Boolean = True
            'Checks that the data entered in the Mobile Number field only contains numbers.
            For i = 1 To mob.Length
                Dim x As String = Mid(mob, i, 1)
                If x <> "0" And x <> "1" And x <> "2" And x <> "3" And x <> "4" And x <> "5" And x <> "6" And x <> "7" And x <> "8" And x <> "9" Then valid = False
            Next
            'Checks that the data entered in the Landline Number field only contains numbers.
            For i = 1 To land.Length
                Dim x As String = Mid(land, i, 1)
                If x <> "0" And x <> "1" And x <> "2" And x <> "3" And x <> "4" And x <> "5" And x <> "6" And x <> "7" And x <> "8" And x <> "9" Then valid = False
            Next
            If valid = False Then
                ErrorLabel.Text = "Error: You have entered an invalid entry in either the mobile or landline field. Please make sure your entries only contain numbers and try again."
            Else
                'creates the conection connects to db
                Dim connection As New OleDb.OleDbConnection
                Dim provider As String
                Dim source As String
                provider = "PROVIDER=Microsoft.Jet.OLEDB.4.0;"
                source = "Data Source=|DataDirectory|DeltaOneMDB.mdb"
                connection.ConnectionString = provider & source
                Dim SQL As String
                SQL = "INSERT INTO EmployeeList (EFullName, EPosition, EEmail, EMobile, ELandline, EAddress, EMonthlySalary) " & _
                    "VALUES ('" & empName.Text & "', '" & empPos.Text & "', '" & empEmail.Text & "', '" & empMob.Text & "', '" & empLnd.Text & "', '" & empAdd.Text & "', " & empSlr.Text & ")"
                Dim cmd As New OleDb.OleDbCommand(SQL, connection)
                connection.Open()
                cmd.ExecuteNonQuery()
                connection.Close()
                Status.Text = "The employee " & empName.Text & " has been successfully added to the EmployeeList table."
                empName.Text = ""
                empPos.Text = ""
                empEmail.Text = ""
                empMob.Text = ""
                empLnd.Text = ""
                empAdd.Text = ""
                empSlr.Text = ""
                ErrorLabel.Text = ""
            End If
        End If
    End Sub
End Class
