Imports System.Data.SqlClient
Imports System.IO
Public Class login_sign_up
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim con = connectdb()(0)
        Dim cmd = connectdb()(1)

        cmd = New SqlCommand("select * from admin where admin_id='" + TextBox1.Text + "' and password='" + TextBox2.Text + "' ", con)

        Dim sda As SqlDataAdapter = New SqlDataAdapter(cmd)
        Dim dt As DataTable = New DataTable()
        sda.Fill(dt)
        If (dt.Rows.Count > 0) Then
            Session("uid") = TextBox1.Text


            Response.Write("<script>success('LOGIN SUCCESSFULL');</script>")

            Response.Redirect("home.aspx")


        Else
            Response.Write("<script>success('INVALID ID AND PASSWORD');</script>")
        End If

    End Sub
End Class