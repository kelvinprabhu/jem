Imports System.Data.SqlClient

Public Class venderlog
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim con = connectdb()(0)
        Dim cmd = connectdb()(1)

        cmd = New SqlCommand("select * from vendor where id='" + TextBox1.Text + "' and password='" + TextBox2.Text + "' ", con)

        Dim sda As SqlDataAdapter = New SqlDataAdapter(cmd)
        Dim dt As DataTable = New DataTable()
        sda.Fill(dt)
        If (dt.Rows.Count > 0) Then
            Session("vid") = TextBox1.Text

            Session("adminid") = Nothing
            Session("uid") = Nothing


            MsgBox(" LOGIN Successfully !!", MsgBoxStyle.Information, "Success")

            Response.Redirect("ven.aspx")


        Else
            Response.Write("<script>alert('Invalid vendor ID');</script>")
        End If



    End Sub
End Class