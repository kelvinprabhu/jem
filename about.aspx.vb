Imports System.Data.SqlClient

Public Class WebForm6
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Dim con = connectdb()(0)
        Dim cmd = connectdb()(1)
        Dim path As String
        path = "~/img/" + FileUpload1.FileName
        FileUpload1.SaveAs(Server.MapPath(path).ToString())

        Page_Load(sender, e)

        cmd = New SqlCommand("INSERT INTO packages(name,package_id,total_cost,description,image) values (@nm,@pi,@tc,@ds,@s)", con)
        cmd.parameters.addwithvalue("@nm", TextBox2.Text)
        cmd.parameters.addwithvalue("@pi", TextBox1.Text)
        cmd.parameters.addwithvalue("@tc", TextBox3.Text)
        cmd.parameters.addwithvalue("@ds", TextBox4.Text)
        cmd.parameters.addwithvalue("@s", path)


        If (TextBox2.Text = "" And TextBox1.Text = "") Then

            MsgBox("Please enter the  details")

        Else

            cmd.ExecuteNonQuery()
            MsgBox("POSTED !!", MsgBoxStyle.Information, "Success")


        End If
        con.Close()
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        If TextBox1.Text = Nothing Then
            Dim gen As New Random
            Dim ran As Integer
            ran = gen.Next(1000, 9999)
            TextBox1.Text = Session("vid") & ran.ToString()
        ElseIf TextBox1.Text IsNot Nothing Then
            Dim con = connectdb()(0)
            Dim cmd = connectdb()(1)
            cmd = New SqlCommand("SELECT * from packages where package_id='" & TextBox1.Text & "'", con)
            Dim rd As SqlDataReader
            rd = cmd.ExecuteReader
            rd.Read()
            TextBox2.Text = rd("name")
            TextBox4.Text = rd("description")
            TextBox3.Text = rd("total_cost")
            Response.Redirect("packedit.aspx")
        Else
            MsgBox(" invalid item id!!", MsgBoxStyle.Critical, "caution")
        End If
    End Sub

    Protected Sub Button4_Click(sender As Object, e As EventArgs) Handles Button4.Click
        Dim con = connectdb()(0)
        Dim cmd = connectdb()(1)
        If (TextBox2.Text = "" And TextBox3.Text = "" And TextBox4.Text = "") Then
            MsgBox("Please enter the details")
        Else
            cmd = New SqlCommand("DELETE FROM packages WHERE package_id ='" & TextBox1.Text & "' ", con)
            cmd.ExecuteNonQuery()
            MsgBox(" deleted successfully", MsgBoxStyle.Information, "warning")

            TextBox2.Text = ""
            TextBox3.Text = ""
            TextBox4.Text = ""

            Response.Redirect("packedit.aspx")


        End If
    End Sub

    Protected Sub Button3_Click(sender As Object, e As EventArgs) Handles Button3.Click
        Dim con = connectdb()(0)
        Dim cmd = connectdb()(1)
        Page_Load(sender, e)

        If (TextBox2.Text = "" And TextBox3.Text = "" And TextBox4.Text = "") Then
            MsgBox("Please enter the details")
        Else
            cmd = New SqlCommand("UPDATE packages set name ='" & TextBox2.Text & "' ,total_cost = '" & TextBox3.Text & "' ,description = '" & TextBox4.Text & "'  WHERE package_id='" & TextBox1.Text & "' ", con)
            cmd.ExecuteNonQuery()
            MsgBox(" data updated successfully", MsgBoxStyle.Information, "succeed")
            TextBox2.Text = ""
            TextBox3.Text = ""
            TextBox4.Text = ""
            Response.Redirect("packedit.aspx")
        End If


    End Sub
End Class