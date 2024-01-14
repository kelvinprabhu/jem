Imports System.Data.SqlClient
Imports System.Drawing

Public Class WebForm13
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim gen As New Random
        Dim ran As Integer
        Dim n As String = "adm"
        ran = gen.Next(1000, 9999)
        TextBox1.Text = n & ran.ToString()
    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Dim con = connectdb()(0)
        Dim cmd = connectdb()(1)


        cmd = New SqlCommand("INSERT INTO admin (email_id,name,phone_no,password,admin_id) values (@ei,@ne,@pn,@pd,@ai)", con)
        cmd.parameters.addwithvalue("@ei", TextBox3.Text)
        cmd.parameters.addwithvalue("@ne", TextBox2.Text)
        cmd.parameters.addwithvalue("@pn", TextBox4.Text)
        cmd.parameters.addwithvalue("@pd", TextBox5.Text)
        cmd.parameters.addwithvalue("@ai", TextBox1.Text)

        If (TextBox3.Text = "" And TextBox5.Text = "") Then
            Response.Write("<script>success('Please enter the  details');</script>")


        Else

            cmd.ExecuteNonQuery()

            Response.Write("<script>success('ADMIN ADDED SUCCESSFULLY');</script>")

        End If

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        If TextBox1.Text = Nothing Then
            Dim gen As New Random
            Dim ran As Integer
            Dim n As String = "adm"
            ran = gen.Next(1000, 9999)
            TextBox1.Text = n & ran.ToString()
            Dim con = connectdb()(0)
            Dim cmd = connectdb()(1)
            cmd = New SqlCommand("SELECT * from admin where admin_id='" & TextBox1.Text & "'", con)
            Dim rd As SqlDataReader
            rd = cmd.ExecuteReader
            rd.Read()
            TextBox2.Text = rd("name")
            TextBox4.Text = rd("phone_no")
            TextBox3.Text = rd("email_id")
        Else
            Response.Write("<script>alert('invalid admin id ');</script>")
        End If
    End Sub

    Protected Sub Button3_Click(sender As Object, e As EventArgs) Handles Button3.Click
        Dim con = connectdb()(0)
        Dim cmd = connectdb()(1)

        Page_Load(sender, e)

        If (TextBox2.Text = "" And TextBox3.Text = "" And TextBox4.Text = "" And TextBox5.Text = "") Then
            MsgBox("Please enter the details")
        Else
            cmd = New SqlCommand("UPDATE admin set name = '" & TextBox2.Text & "' ,email_id= '" & TextBox3.Text & "',phone_no= '" & TextBox4.Text & "' WHERE admin_id ='" & TextBox1.Text & "'  ", con)
            cmd.ExecuteNonQuery()
            Response.Write("<script>success('UPDATED THE ADMIN DETAILS');</script>")
            TextBox2.Text = "" +
            TextBox3.Text = ""
            TextBox4.Text = ""
            TextBox5.Text = ""

        End If
    End Sub
End Class