Imports System.Data.SqlClient

Public Class WebForm8
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim con = connectdb()(0)
        Dim cmd = connectdb()(1)

        cmd = New SqlCommand("INSERT INTO vendor values('" & TextBox9.Text & "','" & TextBox11.Text & "', '" & TextBox13.Text & "', '" & TextBox14.Text & "','" & TextBox15.Text & "', '" & TextBox2.Text & "', '" & TextBox7.Text & "','" & DropDownList1.Text & "')", con)

        If (TextBox2.Text = "") Then
            MsgBox("Please enter the details")
        Else
            cmd.ExecuteNonQuery()
            Response.Write("<script>alert('YOU BEEN ADDED TO VENDER COMMUNITY OF JEM');</script>")
            Response.Redirect("venderlog.aspx")
        End If
    End Sub

    Protected Sub Button3_Click(sender As Object, e As EventArgs) Handles Button3.Click

    End Sub
End Class