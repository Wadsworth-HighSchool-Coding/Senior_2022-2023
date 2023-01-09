
Partial Class Notes1
    Inherits System.Web.UI.Page
    Protected Sub Notes1_Load(sender As Object, e As EventArgs) Handles Me.Load
        If HttpContext.Current.User.Identity.IsAuthenticated = False Then
            'Response.Redirect("~/LoginError.aspx")
        End If
    End Sub


End Class
