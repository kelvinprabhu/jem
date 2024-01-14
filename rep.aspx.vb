Imports System.IO
Imports System.Data.SqlClient
Public Class WebForm9
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim con = connectdb()(0)
        Dim cmd = connectdb()(1)
        cmd = New SqlCommand("SELECT COUNT(user_id) as cu from users", con)
        Dim rd As SqlDataReader
        rd = cmd.ExecuteReader
        rd.Read()
        Label2.Text = rd("cu")
        cmd = New SqlCommand("SELECT COUNT(id) as vu from vender", con)
        Dim srd As SqlDataReader
        srd = cmd.ExecuteReader
        srd.Read()
        Label3.Text = srd("vu")
        cmd = New SqlCommand("SELECT COUNT(eid) as bi,SUM(amount) as am from bill", con)
        Dim d As SqlDataReader
        d = cmd.ExecuteReader
        d.Read()
        Label4.Text = d("eid")
    End Sub

End Class