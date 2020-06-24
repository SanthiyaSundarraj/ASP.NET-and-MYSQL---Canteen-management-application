Imports MySql.Data.MySqlClient
Public Class deleteitem
    Inherits System.Web.UI.Page
    Dim conne As MySqlConnection
    Dim reader As MySqlDataReader
    Dim insertstring As String
    Dim conn As MySqlConnection
    Dim Str As String
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        adding()
    End Sub
    Function adding()
        Try
            conn = New MySqlConnection
            conn.ConnectionString = "server=localhost;userid=root;password=;database=canteen"
            Str = “SELECT * FROM STOCK”
            conn.Open()
            Dim Search As New MySqlDataAdapter(Str, conn)
            Dim ds As DataSet = New DataSet
            Search.Fill(ds, “STOCK”)
            stock.DataSource = ds.Tables(“STOCK”)
            stock.DataBind()
            conn.Close()
        Catch ex As Exception
            MsgBox(ex.Message)
            conn.Close()
        End Try
    End Function
    Dim MysqlConn As MySqlConnection
    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        MysqlConn = New MySqlConnection
        MysqlConn.ConnectionString = "server=localhost;userid=root;password=;database=canteen"
        Dim READI As MySqlDataReader
        Dim Comm As MySqlCommand
        MysqlConn.Open()
        Try
            Dim Que As String
            Que = "DELETE FROM STOCK WHERE ID='" & id.Text & "'"
            Comm = New MySqlCommand(Que, MysqlConn)
            READI = Comm.ExecuteReader

            MsgBox("Item Removed")
            MysqlConn.Close()

        Catch ex As MySqlException

            'exception if any
            MsgBox(ex.Message)
        Finally
            id.Text = ""
        End Try
        adding()
    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Response.Redirect("upstock.aspx")
    End Sub
End Class