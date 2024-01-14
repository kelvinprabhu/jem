Imports System.Data.SqlClient

Public Class adminlog
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub SqlDataSource1_Selecting(sender As Object, e As SqlDataSourceSelectingEventArgs)

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim con = connectdb()(0)
        Dim cmd = connectdb()(1)

        cmd = New SqlCommand("select * from admin where admin_id='" + TextBox1.Text + "' and password='" + TextBox2.Text + "' ", con)

        Dim sda As SqlDataAdapter = New SqlDataAdapter(cmd)
        Dim dt As DataTable = New DataTable()
        sda.Fill(dt)
        If (dt.Rows.Count > 0) Then
            Session("adminid") = TextBox1.Text

            Response.Write("<script>success('LOGIN WAS ACCEPED ... ');</script>")

            Response.Redirect("ahome.aspx")


        Else
            Response.Write("<script>success('LOGIN DENIED INVALID ID OR PASSWORD');</script>")
        End If

    End Sub
End Class