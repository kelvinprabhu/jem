Imports System.Data.SqlClient

Public Class pack
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub DataList1_ItemCommand(source As Object, e As DataListCommandEventArgs) Handles DataList1.ItemCommand
        If e.CommandName = "book" Then
            Session("pack") = e.CommandArgument.ToString()
            Response.Redirect("bill.aspx")
        End If
    End Sub
End Class