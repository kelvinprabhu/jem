Imports System.Data.SqlClient

Public Class WebForm20
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        TextBox8.Text = Session("vid")
        Label1.Text = Session("vid")
        Dim con = connectdb()(0)
        Dim cmd = connectdb()(1)
        cmd = New SqlCommand("SELECT * from vendor where id='" & TextBox8.Text & "'", con)
        Dim rd As SqlDataReader
        rd = cmd.ExecuteReader
        rd.Read()

        TextBox1.Text = rd("shop_name")
        TextBox3.Text = rd("phone_no")
        TextBox4.Text = rd("email")
        TextBox5.Text = rd("address")
        TextBox6.Text = rd("average_price")
        TextBox4.Text = rd("product_description")
            TextBox9.Text = rd("password")

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim con = connectdb()(0)
        Dim cmd = connectdb()(1)
        If (TextBox10.Text = "") Then
            MsgBox("Please enter the details")
        Else
            cmd = New SqlCommand("UPDATE vendor set password='" & TextBox10.Text & "'  WHERE user_id ='" & TextBox9.Text & "' ", con)
            cmd.ExecuteNonQuery()
            MsgBox("Password Reset Successful", MsgBoxStyle.Information, "succeed")
        End If
    End Sub
End Class