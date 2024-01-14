Imports System.Data.SqlClient

Public Class WebForm7
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim con = connectdb()(0)
        Dim cmd = connectdb()(1)


        cmd = New SqlCommand("INSERT INTO feedback values('" & TextBox2.Text & "', '" & TextBox1.Text & "')", con)

        If (TextBox1.Text = "" And TextBox2.Text = "") Then
            MsgBox("Please enter the details")
        Else
            cmd.ExecuteNonQuery()
            Response.Write("<script>success('THANKS FOR YOUR FEEDS ... IT MEANS A LOT ; ) ');</script>")
        End If
    End Sub
End Class