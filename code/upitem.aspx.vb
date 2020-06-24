Imports MySql.Data.MySqlClient
Public Class upitem
    Inherits System.Web.UI.Page
    Dim conne As MySqlConnection
    Dim reader As MySqlDataReader
    Dim MysqlConn As MySqlConnection
    Dim comm As MySqlCommand
    Dim insertstring As String
    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Dim Command As MySqlCommand
        conne = New MySqlConnection
        Dim reader As MySqlDataReader
        conne.ConnectionString = "server=localhost;userid=root;password=;database=canteen;"
        Try
            conne.Open()
            Dim query As String
            query = "select * from STOCK where ID='" & id.Text & "'"
            Command = New MySqlCommand(query, conne)
            reader = Command.ExecuteReader
            While reader.Read
                name.Text = reader("NAME")
                p.Text = reader("PRICE")
                q.Text = reader("QUANTITY")
            End While
            conne.Close()
        Catch ex As MySqlException
            MsgBox(ex.Message)
        End Try
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        MysqlConn = New MySqlConnection
        MysqlConn.ConnectionString = "server=localhost;userid=root;password=;database=canteen"
        Dim READER As MySqlDataReader


        Try
            MysqlConn.Open()
            Dim Query As String
            '    Query = "UPDATE STOCK SET NAME = '" & name.Text & "' and PRICE = '" & p.Text & "' and QUANTITY = '" & q.Text & "' WHERE  ID = '" & id.Text & "'"
            Query = "UPDATE `stock` SET `NAME`='" & name.Text & "',`PRICE`='" & p.Text & "',`QUANTITY`='" & q.Text & "' WHERE `ID`='" & id.Text & "'"
            comm = New MySqlCommand(Query, MysqlConn)
            READER = Comm.ExecuteReader

            MsgBox("ITEM UPDATED..")
            MysqlConn.Close()

        Catch ex As MySqlException
            MsgBox(ex.Message)
        Finally
            MysqlConn.Dispose()

        End Try
    End Sub

    Protected Sub Button3_Click(sender As Object, e As EventArgs) Handles Button3.Click
        Response.Redirect("upstock.aspx")
    End Sub
End Class