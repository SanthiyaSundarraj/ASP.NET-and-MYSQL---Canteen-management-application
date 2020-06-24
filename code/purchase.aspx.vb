Imports MySql.Data.MySqlClient
Public Class purchase
    Inherits System.Web.UI.Page
    Dim conne As MySqlConnection
    Dim reader As MySqlDataReader
    Dim insertstring As String
    Dim P As Integer
    Dim med As String
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        adding()
    End Sub
    Dim conn As MySqlConnection
    Dim Str As String
    Dim price As Integer
    Function adding()
        Try
            conn = New MySqlConnection
            conn.ConnectionString = "server=localhost;userid=root;password=;database=canteen"
            '            Dim READER As MySqlDataReader
            Str = “SELECT * FROM STOCK”
            conn.Open()
            Dim Search As New MySqlDataAdapter(Str, conn)
            Dim ds As DataSet = New DataSet
            Search.Fill(ds, “STOCK”)
            s.DataSource = ds.Tables(“STOCK”)
            s.DataBind()
            conn.Close()
        Catch ex As Exception
            MsgBox(ex.Message)
            conn.Close()
        End Try

        Try
            conn = New MySqlConnection
            conn.ConnectionString = "server=localhost;userid=root;password=;database=canteen"
            '            Dim READER As MySqlDataReader
            Str = “SELECT * FROM bill”
            conn.Open()
            Dim Search As New MySqlDataAdapter(Str, conn)
            Dim ds As DataSet = New DataSet
            Search.Fill(ds, “bill”)
            b.DataSource = ds.Tables(“bill”)
            b.DataBind()
            conn.Close()
        Catch ex As Exception
            MsgBox(ex.Message)
            conn.Close()
        End Try
    End Function

    Dim MysqlConn As MySqlConnection

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        If q.Text = "0" Then
            MsgBox("Quantity cannot be zero..So enter a valid quantity..")
        Else
            Dim Command As MySqlCommand
            Dim f As String
            conne = New MySqlConnection
            Dim reader As MySqlDataReader
            conne.ConnectionString = "server=localhost;userid=root;password=;database=canteen;"
            Try
                conne.Open()
                Dim query As String
                query = "select NAME,PRICE from STOCK where ID='" & id.Text & "'"
                Command = New MySqlCommand(query, conne)
                reader = Command.ExecuteReader
                While reader.Read
                    'pri.Text = reader("PRICE")
                    price = Integer.Parse(reader("PRICE")) * Integer.Parse(q.Text)
                    'pri.Text = price.ToString()
                    f = reader("NAME")
                End While
                conn.Close()
            Catch ex As MySqlException

                'exception if any
                MsgBox(ex.Message)
            End Try


            MysqlConn = New MySqlConnection
            MysqlConn.ConnectionString = "server=localhost;userid=root;password=;database=canteen"
            Dim READI As MySqlDataReader
            Dim Comm As MySqlCommand
            MysqlConn.Open()
            Try
                Dim Que As String
                Que = "insert into bill (ID,NAME,QUANTITY,PRICE) values ('" & id.Text & "','" & f & "','" & q.Text & "','" & price & "')"
                Comm = New MySqlCommand(Que, MysqlConn)
                READI = Comm.ExecuteReader

                MsgBox("Item Added")
                MysqlConn.Close()

            Catch ex As MySqlException

                'exception if any
                MsgBox(ex.Message)
            Finally
                id.Text = ""
                q.Text = ""
            End Try
            adding()
        End If
        'purchase.Show()
    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        MysqlConn = New MySqlConnection
        MysqlConn.ConnectionString = "server=localhost;userid=root;password=;database=canteen"
        Dim READI As MySqlDataReader
        Dim Comm As MySqlCommand
        MysqlConn.Open()
        Try
            Dim Que As String
            Que = "DELETE FROM bill WHERE ID='" & id.Text & "'"
            Comm = New MySqlCommand(Que, MysqlConn)
            READI = Comm.ExecuteReader

            MsgBox("Item Removed")
            MysqlConn.Close()

        Catch ex As MySqlException

            'exception if any
            MsgBox(ex.Message)
        Finally
            id.Text = ""
            q.Text = ""
        End Try
        adding()
    End Sub

    Protected Sub Button3_Click(sender As Object, e As EventArgs) Handles Button3.Click
        Response.Redirect("bill.aspx")
    End Sub

    Protected Sub Button4_Click(sender As Object, e As EventArgs) Handles Button4.Click
        Response.Redirect("cus.aspx")
    End Sub

    Protected Sub id_TextChanged(sender As Object, e As EventArgs) Handles id.TextChanged

    End Sub
End Class