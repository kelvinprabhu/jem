Imports System.Data.SqlClient

Public Class WebForm5
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim dateAndTime As Date
        dateAndTime = Now
        TextBox1.Text = Session("uid") + (Format(dateAndTime, "ddHHmmss").ToString)
        bd.Text = Format(dateAndTime, "dd/MM/yyyy").ToString
        If Session("uid") = Nothing Then

            MsgBox("please login to proceed further!!", MsgBoxStyle.Information, "caution")
            Response.Redirect("login sign up.aspx")
        Else
            TextBox6.Text = Session("pack")

            Dim con = connectdb()(0)
            Dim cmd = connectdb()(1)
            cmd = New SqlCommand("SELECT * from packages where package_id='" & TextBox6.Text & "'", con)
            Dim rd As SqlDataReader

            rd = cmd.ExecuteReader
            rd.Read()
            TextBox7.Text = rd("name")
            TextBox8.Text = rd("total_cost")
        End If



    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim dateAndTime As Date
        dateAndTime = Now
        TextBox1.Text = Session("uid") & (Format(dateAndTime, "MMddHHmmss").ToString)

    End Sub

    Protected Sub Button4_Click(sender As Object, e As EventArgs) Handles Button4.Click
        Dim con = connectdb()(0)
        Dim cmd = connectdb()(1)
        Page_Load(sender, e)

        cmd = New SqlCommand("INSERT INTO event values('" & TextBox1.Text & "', '" & TextBox2.Text & "', '" & TextBox3.Text & "', '" & bd.Text & "', '" & ed.Text & "', '" & TextBox5.Text & "', '" & TextBox4.Text & "', '" + Session("uid") + "', '" & TextBox6.Text & "' )", con)

        If (TextBox1.Text = "" And TextBox2.Text = "" And TextBox3.Text = "" And TextBox4.Text = "" And TextBox5.Text = "" And bd.Text = "" And ed.Text = "") Then
                MsgBox("Please enter the details")
            Else
                cmd.ExecuteNonQuery()
                MsgBox("Successfully entered!", MsgBoxStyle.Information, "Success")
            Session("amt") = TextBox8.Text
            Session("bid") = TextBox1.Text
            Response.Redirect("billpack.aspx")
            End If
    End Sub
End Class