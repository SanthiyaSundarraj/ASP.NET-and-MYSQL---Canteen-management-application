Imports MySql.Data.MySqlClient
Public Class additem
    Inherits System.Web.UI.Page
    Dim MysqlConn As MySqlConnection
    Dim COMMAND As MySqlCommand

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        MysqlConn = New MySqlConnection
        MysqlConn.ConnectionString = "server=localhost;userid=root;password=;database=canteen"
        Dim READER As MySqlDataReader


        Try
            MysqlConn.Open()
            Dim Query As String
            Query = "insert into STOCK (ID,NAME,PRICE,QUANTITY) values ('" & id.Text & "','" & name.Text & "','" & price.Text & "','" & q.Text & "')"
            COMMAND = New MySqlCommand(Query, MysqlConn)
            READER = COMMAND.ExecuteReader

            MsgBox("ITEM ADDED")
            MysqlConn.Close()

        Catch ex As MySqlException
            MsgBox(ex.Message)
        Finally
            MysqlConn.Dispose()

        End Try
    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Response.Redirect("upstock.aspx")
    End Sub
End Class