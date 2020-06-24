Imports System.Data
Imports System.Data.SqlClient
Imports MySql.Data.MySqlClient
Public Class WebForm1
    Inherits System.Web.UI.Page
    Dim conn As MySqlConnection
    Dim command As MySqlCommand
    Dim reader As MySqlDataReader
    Dim insertstring As String
    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        ConnectToSQL()
    End Sub
    Private Sub ConnectToSQL()

        conn = New MySqlConnection
        Dim reader As MySqlDataReader
        conn.ConnectionString = "server=localhost;userid=root;password=;database=canteen;"
        Try
            conn.Open()
            Dim query As String
            query = "select * from username where USERNAME='" & user.Text & "' and PASSWORD='" & pass.Text & "'"
            command = New MySqlCommand(query, conn)
            reader = command.ExecuteReader
            Dim count As Integer
            count = 0
            While reader.Read
                count = count + 1
            End While
            If count = 1 Then
                MsgBox("SuccessFully logged in..")
                Response.Redirect("admin.aspx")
            ElseIf count > 1 Then
                MsgBox("username and password are incorrect")
            Else
                MsgBox("username and password are incorrect")
            End If
            conn.Close()
        Catch ex As MySqlException

            'exception if any
        Finally

        End Try

    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Response.Redirect("main.aspx")
    End Sub
End Class