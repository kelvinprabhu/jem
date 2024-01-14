Imports System.Data.SqlClient

Public Class items
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load


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

        cmd = New SqlCommand("select * from items where item_Id='" + TextBox1.Text + "' ", con)

        Dim sda As SqlDataAdapter = New SqlDataAdapter(cmd)
        Dim dt As DataTable = New DataTable()




        sda.Fill(dt)
        If (dt.Rows.Count > 0) Then


            cmd = New SqlCommand("INSERT INTO cart (price,name,bid,qty,tp) values (@ne,@pn,@pd,@ai,@tp)", con)

            cmd.parameters.addwithvalue("@ne", TextBox5.Text)
            cmd.parameters.addwithvalue("@pn", TextBox3.Text)
            cmd.parameters.addwithvalue("@pd", Label2.Text)
            cmd.parameters.addwithvalue("@ai", Text.Text)
            cmd.parameters.addwithvalue("@tp", TextBox2.Text)
            If (TextBox1.Text = "") Then
                MsgBox("Please select the item")
            Else
                cmd.ExecuteNonQuery()
                Response.Write("<script>SUCCESS('added to cart');</script>")
                TextBox3.Text = ""
                TextBox2.Text = ""
                TextBox5.Text = ""
                Text.Text = ""
                Response.Write("<script>alert('add an another item');</script>")
            End If

            Session("bid") = Label2.Text


        Else
            Response.Write("<script>alert('Invalid ITEM ID');</script>")
        End If
    End Sub
    Protected Sub DataList1_ItemCommand(source As Object, e As DataListCommandEventArgs) Handles DataList1.ItemCommand
        If e.CommandName = "boo" Then
            Session("tem") = e.CommandArgument.ToString()
            TextBox1.Text = Session("tem")
        End If
    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Session("pack") = Label2.Text
        Response.Redirect("evntb.aspx")
    End Sub

    Protected Sub Button3_Click(sender As Object, e As EventArgs) Handles Button3.Click
        Dim con = connectdb()(0)
        Dim cmd = connectdb()(1)

        cmd = New SqlCommand("select * from items where item_Id='" + TextBox1.Text + "' ", con)

        Dim rd As SqlDataReader
        rd = cmd.ExecuteReader
        rd.Read()
        TextBox3.Text = rd("itemname")
        TextBox5.Text = rd("price")
        Response.Write("<script>success('item found');</script>")


    End Sub

    Protected Sub Button4_Click(sender As Object, e As EventArgs) Handles Button4.Click
        Dim a As Integer = Text.Text
        Dim b As Integer = TextBox5.Text
        Dim c As Integer
        c = a * b
        TextBox2.Text = c
    End Sub
End Class