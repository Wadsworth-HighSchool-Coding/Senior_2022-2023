Public Class _Default
    Inherits Page



    Protected Sub TextBox1_TextChanged(sender As Object, e As EventArgs)

    End Sub

    Protected Sub Submit_Click(sender As Object, e As EventArgs) Handles Submit.Click
        SqlDataSource1.Insert()

    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If HttpContext.Current.User.Identity.IsAuthenticated = False Then
            Response.Redirect("~/Account/Login.aspx")
        End If
    End Sub
End Class