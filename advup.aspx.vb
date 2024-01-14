Imports System.Data.SqlClient

Public Class advup
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If Session("uid") IsNot Nothing Then
            Label1.Text = Session("uid")
        ElseIf Session("vid") IsNot Nothing Then
            Label1.Text = Session("vid")
        ElseIf Session("adminid") IsNot Nothing Then
            Label1.Text = Session("adminid")
        Else
            Label1.Text = "guest"
        End If

        If Label2.Text = Nothing Then
            Dim gen As New Random
            Dim ran As Integer
            ran = gen.Next(1000, 9999)
            Label2.Text = ran.ToString()
        End If

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim con = connectdb()(0)
        Dim cmd = connectdb()(1)

        Dim path As String
        path = "~/img/" + FileUpload1.FileName
        FileUpload1.SaveAs(Server.MapPath(path).ToString())

        Page_Load(sender, e)
        cmd = New SqlCommand("INSERT INTO advertisement values('" & TextBox3.Text & "', '" & TextBox1.Text & "', '" & TextBox2.Text & "', '" & DropDownList1.Text & "', '" & TextBox5.Text & "', '" & TextBox4.Text & "' , '" + path + "', '" & Label2.Text & "' )", con)

        If (TextBox1.Text = "" And TextBox2.Text = "" And TextBox3.Text = "" And TextBox4.Text = "" And TextBox5.Text = "" And TextBox6.Text = "") Then
            MsgBox("Please enter the details")
        Else
            cmd.ExecuteNonQuery()
            Response.Write("<script>success('ADVETISEMENTS HAS BEEN POSTED SUCCESSFULLY');</script>")
        End If
    End Sub
End Class