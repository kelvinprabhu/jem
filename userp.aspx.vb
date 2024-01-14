Imports System.Data.SqlClient

Public Class WebForm18
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Label1.Text = Session("uid")

        Dim con = connectdb()(0)
        Dim cmd = connectdb()(1)
        cmd = New SqlCommand("SELECT * from admin where admin_id='" & Label1.Text & "'", con)
        Dim rd As SqlDataReader
        rd = cmd.ExecuteReader
        rd.Read()
        TextBox8.Text = rd("admin_id")
        TextBox1.Text = rd("name")
        TextBox3.Text = rd("phone_no")
        TextBox4.Text = rd("email_id")
        TextBox9.Text = rd("password")
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim con = connectdb()(0)
        Dim cmd = connectdb()(1)
        If (TextBox10.Text = "") Then
            MsgBox("Please enter the details")
        Else
            cmd = New SqlCommand("UPDATE admin set password='" & TextBox10.Text & "'  WHERE admin_id ='" & TextBox9.Text & "' ", con)
            cmd.ExecuteNonQuery()
            MsgBox("Password Reset Successful", MsgBoxStyle.Information, "succeed")
        End If

    End Sub
End Class