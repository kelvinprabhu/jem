
Imports System.Data.SqlClient
Imports System.IO
Imports System.Security.Cryptography
Public Class adminup
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim con = connectdb()(0)
        Dim cmd = connectdb()(1)


        cmd = New SqlCommand("INSERT INTO admin values('" & TextBox1.Text & "','" & TextBox3.Text & "', '" & TextBox6.Text & "','" & TextBox2.Text & "', '" & TextBox5.Text & "')", con)


        If (TextBox3.Text = "" And TextBox5.Text = "") Then

            MsgBox("Please enter the  details")

        Else

            cmd.ExecuteNonQuery()
            Response.Write("<script>success('WELCOME TO JEM...YOU BEEN REGISTERED SUCCESSFULLY');</script>")

            Response.Redirect("login sign up.aspx")
        End If
        con.Close()

    End Sub
End Class