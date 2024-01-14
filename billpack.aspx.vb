Imports System.Data.SqlClient

Public Class WebForm16
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        TextBox2.Text = Session("pack")
        TextBox1.Text = Session("bid")
        TextBox3.Text = Session("amt")
        TextBox5.Text = Session("uid")
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim con = connectdb()(0)
        Dim cmd = connectdb()(1)
        cmd = New SqlCommand("INSERT INTO bill (bill_id,crdname,amount,phone_no,eid) values (@ei,@ne,@pn,@pd,@ai)", con)
        cmd.parameters.addwithvalue("@ei", TextBox1.Text)
        cmd.parameters.addwithvalue("@ne", TextBox5.Text)
        cmd.parameters.addwithvalue("@pn", TextBox3.Text)
        cmd.parameters.addwithvalue("@pd", TextBox4.Text)
        cmd.parameters.addwithvalue("@ai", TextBox2.Text)



        cmd.ExecuteNonQuery()
        Response.Write("<script>success('PAYMENT SUCCESSFULL YOU CAN VIEW YOUR ORDER DETAILS IN YOUR PROFILE PAGE');</script>")

        con.Close()
    End Sub
End Class