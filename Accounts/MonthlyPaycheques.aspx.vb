Imports System.Data

Partial Class Accounts_MonthlyPaycheques
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
        empLate.Text = "0"
        empAbs.Text = "0"
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
        Dim validNo As Boolean = True
        If empAbs.Text = "" Then
            empAbs.Text = "0"
        Else
            Dim abs As String = empAbs.Text
            Dim x As String
            For i = 1 To abs.Length
                x = Mid(abs, i, 1)
                If x <> "1" And x <> "2" And x <> "3" And x <> "4" And x <> "5" And x <> "6" And x <> "7" And x <> "8" And x <> "9" And x <> "0" Then validNo = False
            Next
        End If

        If empLate.Text = "" Then
            empLate.Text = "0"
        Else
            Dim late As String = empLate.Text
            Dim x As String
            For i = 1 To late.Length
                x = Mid(late, i, 1)
                If x <> "1" And x <> "2" And x <> "3" And x <> "4" And x <> "5" And x <> "6" And x <> "7" And x <> "8" And x <> "9" And x <> "0" Then validNo = False
            Next
        End If

        If empDdt.Text = "" Then
            empDdt.Text = "0"
        Else
            Dim ddt As String = empDdt.Text
            Dim x As String
            For i = 1 To ddt.Length
                x = Mid(ddt, i, 1)
                If x <> "1" And x <> "2" And x <> "3" And x <> "4" And x <> "5" And x <> "6" And x <> "7" And x <> "8" And x <> "9" And x <> "0" Then validNo = False
            Next
        End If

        If validNo = False Then
            ErrorLabel.Text = "Error: You may only enter numbers in the Days Late, Days Absent and Deduct from Salary fields."
        Else
            Dim connection As New OleDb.OleDbConnection
            Dim provider As String
            Dim source As String
            Dim adaptor As New OleDb.OleDbDataAdapter
            provider = "PROVIDER=Microsoft.Jet.OLEDB.4.0;"
            source = "Data Source=|DataDirectory|DeltaOneMDB.mdb"
            connection.ConnectionString = provider & source
            Dim SQL As String
            Dim dataset As New DataSet
            'SQL = Find salary of employee according to EmployeeID
            SQL = "SELECT EMonthlySalary FROM EmployeeList WHERE EmployeeID = " & empID.Text
            'Assign extracted data to DataSet1
            adaptor = New OleDb.OleDbDataAdapter(SQL, connection)
            adaptor.Fill(dataset, "Salary")
            Dim initialSalary As Integer = dataset.Tables("Salary").Rows(0).Item(0)
            'SQL = Find current balance
            SQL = "SELECT CurrentBalance FROM CurrentBalance WHERE ID = 1"
            adaptor = New OleDb.OleDbDataAdapter(SQL, connection)
            'Assign extracted data to DataSet2
            adaptor.Fill(dataset, "Balance")
            Dim balance As Integer = dataset.Tables("Balance").Rows(0).Item(0)
            'Compare salary to current balance
            '  If salary > current balance
            If initialSalary > balance Then
                ErrorLabel.Text = "Error: The current balance is smaller than the amount you need to pay the salary"
            Else
                connection.Open()
                '	SQL = add data to EmployeeSalaries table
                Dim empDate As String = DateAndTime.Now()
                SQL = "INSERT INTO EmployeeSalaries (EmployeeID, DaysLate, DaysAbsent, SalaryMonth, SalaryYear, DateEntered) " & _
                    "VALUES ('" & empID.Text & "', " & empLate.Text & ", " & empAbs.Text & ", '" & empMon.Text & "', " & empYr.Text & ", '" & empDate & "')"
                Dim cmdInsert As New OleDb.OleDbCommand(SQL, connection)
                cmdInsert.ExecuteNonQuery()
                '   newSalary As Integer = (data in DataSet1) - (amount deducted from salary)
                Dim deductSalary As Integer = empDdt.Text
                Dim newSalary As Integer = initialSalary - deductSalary
                Dim newBalance As Integer = balance - newSalary
                '	SQL = Update current balance (deduct newSalary)
                SQL = "UPDATE CurrentBalance SET CurrentBalance = " & newBalance & " WHERE ID = 1"
                Dim cmdBalance As New OleDb.OleDbCommand(SQL, connection)
                cmdBalance.ExecuteNonQuery()
                Status.Text = "The salary has been recorded."
                'EndIf
                connection.Close()
            End If
        End If
    End Sub
End Class