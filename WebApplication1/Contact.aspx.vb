Public Class Contact
    Inherits Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load
        If HttpContext.Current.User.Identity.IsAuthenticated = False Then
            Response.Redirect("~/about")
        End If
    End Sub
End Class