Imports System.Data.SqlClient
Imports System.Drawing
Imports System.IO
Imports System.Security.Cryptography

Public Class WebForm10
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        TextBox5.Text = Session("vid")
    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Dim con = connectdb()(0)
        Dim cmd = connectdb()(1)
        Dim path As String
        path = "~/img/" + FileUpload1.FileName
        FileUpload1.SaveAs(Server.MapPath(path).ToString())

        Page_Load(sender, e)
        cmd = New SqlCommand("INSERT INTO items(item_Id,venderid,itemname,itemdesc,image,price) values (@id,@vd,@in,@ide,@img,@pr)", con)
        cmd.parameters.addwithvalue("@id", TextBox1.Text)
        cmd.parameters.addwithvalue("@vd", TextBox5.Text)
        cmd.parameters.addwithvalue("@in", TextBox2.Text)
        cmd.parameters.addwithvalue("@ide", TextBox3.Text)
        cmd.parameters.addwithvalue("@img", path)
        cmd.parameters.addwithvalue("@pr", TextBox4.Text)
        If (TextBox5.Text = "" And TextBox1.Text = "") Then

            MsgBox("Please enter the  details")

        Else
            cmd.ExecuteNonQuery()
            Response.Write("<script>success('ITEMS BEEN INSERTED SUCCESSFULLY');</script>")
        End If
        con.Close()
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click

        If TextBox1.Text = Nothing Then
            Dim gen As New Random
            Dim ran As Integer
            ran = gen.Next(100, 999)
            TextBox1.Text = Session("vid") & ran.ToString()
        ElseIf TextBox1.Text IsNot Nothing Then
            Dim con = connectdb()(0)
            Dim cmd = connectdb()(1)
            cmd = New SqlCommand("SELECT * from items where item_Id='" & TextBox1.Text & "'", con)
            Dim rd As SqlDataReader
            rd = cmd.ExecuteReader
            rd.Read()


            TextBox2.Text = rd("itemname")
            TextBox3.Text = rd("itemdesc")
            TextBox4.Text = rd("price")

        Else
            Response.Write("<script>success('ITEMS ID IS INVALID');</script>")
        End If

    End Sub

    Protected Sub Button4_Click(sender As Object, e As EventArgs) Handles Button4.Click
        Dim con = connectdb()(0)
        Dim cmd = connectdb()(1)
        If (TextBox2.Text = "" And TextBox3.Text = "" And TextBox4.Text = "") Then
            MsgBox("Please enter the details")
        Else
            cmd = New SqlCommand("DELETE FROM items WHERE item_Id ='" & TextBox1.Text & "' ", con)
            cmd.ExecuteNonQuery()
            Response.Write("<script>success('ITEM BEEN DROPED');</script>")

            TextBox2.Text = ""
            TextBox3.Text = ""
            TextBox4.Text = ""

        End If
        con.Close()
    End Sub

    Protected Sub Button3_Click(sender As Object, e As EventArgs) Handles Button3.Click
        Dim con = connectdb()(0)
        Dim cmd = connectdb()(1)
        con.Open()

        Dim path As String
        path = "~/img/" + FileUpload1.FileName
        FileUpload1.SaveAs(Server.MapPath(path).ToString())

        Page_Load(sender, e)

        If (TextBox2.Text = "" And TextBox3.Text = "" And TextBox4.Text = "" And TextBox5.Text = "") Then
            MsgBox("Please enter the details")
        Else
            cmd = New SqlCommand("UPDATE items set itemdesc= '" & TextBox3.Text & "'itemname = '" & TextBox2.Text & "' ,price= '" & TextBox4.Text & "'image ='" & path & "'  WHERE item_Id ='" & TextBox1.Text & "'  ", con)
            cmd.ExecuteNonQuery()
            Response.Write("<script>success('ITEMS BEEN UPDATED SUCCESSFULLY');</script>")
            TextBox5.Text = ""
            TextBox3.Text = ""
            TextBox2.Text = ""
            TextBox4.Text = ""
            TextBox1.Text = ""

        End If
        con.Close()
    End Sub

    Protected Sub TextBox5_TextChanged(sender As Object, e As EventArgs) Handles TextBox5.TextChanged

    End Sub
End Class