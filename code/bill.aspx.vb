﻿Imports MySql.Data.MySqlClient
Public Class bill
    Inherits System.Web.UI.Page
    Dim conn As MySqlConnection
    Dim connec As MySqlConnection
    Dim reader As MySqlDataReader
    Dim insertstring As String
    Dim Str As String
    Dim bill As Integer
    Function findbillnum()
        Dim Command As MySqlCommand
        connec = New MySqlConnection
        Dim reader As MySqlDataReader
        connec.ConnectionString = "server=localhost;userid=root;password=;database=canteen;"
        Try
            connec.Open()
            Dim query As String
            query = "select * from billnum where 1"
            Command = New MySqlCommand(query, connec)
            reader = Command.ExecuteReader
            While reader.Read
                bill = Integer.Parse(reader("num"))

            End While
            connec.Close()
        Catch ex As MySqlException

            'exception if any
            MsgBox(ex.Message)
        End Try
    End Function
    Function upbillnum()
        MysqlConn = New MySqlConnection
        MysqlConn.ConnectionString = "server=localhost;userid=root;password=;database=canteen"
        Dim READER As MySqlDataReader
        bill = bill + 1
        n.Text = bill
        Try
            MysqlConn.Open()
            Dim Query As String

            Query = "UPDATE billnum SET num = '" & bill & "'where 1"
            COMMAND = New MySqlCommand(Query, MysqlConn)
            READER = COMMAND.ExecuteReader
            MysqlConn.Close()

        Catch ex As MySqlException
            MsgBox(ex.Message)
        Finally
            MysqlConn.Dispose()

        End Try
    End Function
    Dim MysqlConn As MySqlConnection
    Dim COMMAND As MySqlCommand
    Function addbill()
        MysqlConn = New MySqlConnection
        MysqlConn.ConnectionString = "server=localhost;userid=root;password=;database=canteen"
        Dim READI As MySqlDataReader
        Dim Comm As MySqlCommand
        MysqlConn.Open()
        Try
            Dim Que As String
            Que = "insert into HISTORY (NUMBER,AMOUNT) values ('" & n.Text & "','" & t.Text & "')"
            Comm = New MySqlCommand(Que, MysqlConn)
            READI = Comm.ExecuteReader
            MysqlConn.Close()

        Catch ex As MySqlException

            'exception if any
            MsgBox(ex.Message)
        Finally
        End Try
    End Function
    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        addbill()
        MysqlConn = New MySqlConnection
        MysqlConn.ConnectionString = "server=localhost;userid=root;password=;database=canteen"
        Dim READER As MySqlDataReader
        Try
            MysqlConn.Open()
            Dim Query As String
            Query = " DELETE FROM bill WHERE 1"
            COMMAND = New MySqlCommand(Query, MysqlConn)
            READER = COMMAND.ExecuteReader

            MsgBox("Thank you for purchasing..")
            Response.Redirect("cus.aspx")
            MysqlConn.Close()
        Catch ex As MySqlException
            MsgBox(ex.Message)
        Finally
            MysqlConn.Dispose()

        End Try

    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        findbillnum()
        upbillnum()
        Try
            conn = New MySqlConnection
            conn.ConnectionString = "server=localhost;userid=root;password=;database=canteen"
            '            Dim READER As MySqlDataReader
            Str = “SELECT * FROM BILL”
            conn.Open()
            Dim Search As New MySqlDataAdapter(Str, conn)
            Dim ds As DataSet = New DataSet
            Search.Fill(ds, “BILL”)
            b.DataSource = ds.Tables(“BILL”)
            b.DataBind()
            Dim sum As Integer
            For i As Integer = 0 To b.Rows.Count() - 1 Step +1
                sum = sum + b.Rows(i).Cells(2).Text
            Next
            t.Text = sum.ToString()
            'addbill()
            conn.Close()
        Catch ex As Exception
            MsgBox(ex.Message)
            conn.Close()
        End Try
    End Sub
End Class