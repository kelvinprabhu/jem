Public Class Site1
    Inherits System.Web.UI.MasterPage

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("uid") IsNot Nothing Then
            user.Visible = True
            user.Text = Session("uid")
            Button1.Visible = False
        ElseIf Session("adminid") IsNot Nothing Then
            user.Visible = True
            user.Text = Session("adminid")
            Button1.Visible = False
        ElseIf Session("vid") IsNot Nothing Then
            user.Visible = True
            user.Text = Session("uid")
            Button1.Visible = False
        End If
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click

    End Sub

    Protected Sub user_Click(sender As Object, e As EventArgs) Handles user.Click
        If Session("uid") IsNot Nothing Then

            Response.Redirect("userp.aspx")
        ElseIf Session("vid") IsNot Nothing Then

            Response.Redirect("venp.aspx")
        ElseIf Session("adminid") IsNot Nothing Then

            Response.Redirect("admp.aspx")
        End If
    End Sub
End Class