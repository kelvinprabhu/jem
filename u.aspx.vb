Imports System.Data.SqlClient

Public Class WebForm3
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim con = connectdb()(0)
        Dim cmd = connectdb()(1)

        Dim path As String
        path = "~/img/" + FileUpload1.FileName
        FileUpload1.SaveAs(Server.MapPath(path).ToString())

        Page_Load(sender, e)
        cmd = New SqlCommand("INSERT INTO pastevent values('" & TextBox3.Text & "', '" & TextBox2.Text & "', '" & TextBox1.Text & "', '" + path + "' )", con)

        If (TextBox1.Text = "" And TextBox2.Text = "" And TextBox3.Text = "") Then
            MsgBox("Please enter the details")
        Else
            cmd.ExecuteNonQuery()
            Response.Write("<script>success('past event been posted to the gallery');</script>")
        End If
    End Sub
End Class