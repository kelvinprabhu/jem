Imports System.Data.SqlClient
Imports System.Security.Cryptography

Public Class WebForm15
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim dateAndTime As Date
        dateAndTime = Now
        TextBox1.Text = Session("uid") + (Format(dateAndTime, "ddHHmmss").ToString)
        bd.Text = Format(dateAndTime, "dd/MM/yyyy").ToString
        If Session("uid") = Nothing Then
            Label2.Visible = False
            Button4.Visible = False
            Response.Write("<script>success('LOGIN TO PROCEED FURTHER');</script>")
            Response.Redirect("login sign up.aspx")
        Else
            Label2.Text = Session("uid")
            Button4.Visible = True
            TextBox6.Text = Session("pack")
        End If



    End Sub




    Protected Sub Button4_Click(sender As Object, e As EventArgs) Handles Button4.Click
        Dim con = connectdb()(0)
        Dim cmd = connectdb()(1)
        Page_Load(sender, e)

        cmd = New SqlCommand("INSERT INTO event values('" & TextBox1.Text & "', '" & TextBox2.Text & "', '" & TextBox3.Text & "', '" & bd.Text & "', '" & ed.Text & "', '" & TextBox5.Text & "', '" & TextBox4.Text & "', '" + Session("uid") + "', '" & TextBox6.Text & "' )", con)

        If (TextBox1.Text = "" And TextBox2.Text = "" And TextBox3.Text = "" And TextBox4.Text = "" And TextBox5.Text = "" And bd.Text = "" And ed.Text = "") Then
            Response.Write("<script>success('Please enter the  details');</script>")
        Else
                cmd.ExecuteNonQuery()
            Response.Write("<script>success('BOOKING BEEN SUCCESSFULPROCEED WITH PAYMENT');</script>")
            Session("amt") = TextBox7.Text
            Session("bid") = TextBox1.Text
            Response.Redirect("billpack.aspx")
            End If


    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim dateAndTime As Date
        dateAndTime = Now
        TextBox1.Text = Session("uid") + (Format(dateAndTime, "ddHHmmss").ToString)

    End Sub

    Protected Sub Button5_Click(sender As Object, e As EventArgs) Handles Button5.Click
        Dim con = connectdb()(0)
        Dim cmd = connectdb()(1)

        cmd = New SqlCommand("select SUM(tp) as tpi from cart where bid='" & TextBox6.Text & "' ", con)

        Dim rd As SqlDataReader
        rd = cmd.ExecuteReader
        rd.Read()

        TextBox7.Text = rd("tpi")

    End Sub

    Protected Sub ListView1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles ListView1.SelectedIndexChanged

    End Sub
End Class