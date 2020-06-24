Imports MySql.Data.MySqlClient
Public Class viewstock
    Inherits System.Web.UI.Page
    Dim conn As MySqlConnection
    Dim Str As String
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
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
    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Response.Redirect("admin.aspx")
    End Sub
End Class