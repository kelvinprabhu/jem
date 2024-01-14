Public Class WebForm11
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub
    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Session("pack") = "tvl001"
        Session("d") = "TRAVELLING"
        Session("amt") = "170"
        Response.Redirect("inv.aspx")
    End Sub
    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Session("pack") = "pgh001"
        Session("amt") = "450"
        Session("d") = "PHOTOGRAPHY"
        Response.Redirect("inv.aspx")
    End Sub
    Protected Sub Button3_Click(sender As Object, e As EventArgs) Handles Button3.Click
        Session("pack") = "org001"
        Session("d") = "ORGANISER"
        Session("amt") = "200"
        Response.Redirect("inv.aspx")
    End Sub
End Class