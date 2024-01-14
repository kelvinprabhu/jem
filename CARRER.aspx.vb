Imports System.Data.SqlClient

Public Class WebForm4
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim con = connectdb()(0)
        Dim cmd = connectdb()(1)


        cmd = New SqlCommand("INSERT INTO hiring values('" & TextBox3.Text & "','" & TextBox2.Text & "', '" & DropDownList1.Text & "','" & DropDownList2.Text & "', '" & TextBox4.Text & "')", con)

        If (TextBox4.Text = "" And TextBox2.Text = "") Then
            MsgBox("Please enter the details")
        Else
            cmd.ExecuteNonQuery()
            MsgBox("Successfully!", MsgBoxStyle.Information, "Success")
        End If
    End Sub
End Class