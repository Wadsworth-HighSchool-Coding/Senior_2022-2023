Public Class Notes5
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim imageW As Integer = Convert.ToInt32(TextBox4.Text)
        Dim imageH As Integer = Convert.ToInt32(TextBox6.Text)
        Image1.Width = imageW
        Image1.Height = imageH

    End Sub



    Protected Sub TextBox6_TextChanged(sender As Object, e As EventArgs) Handles TextBox6.TextChanged
        Dim imageH As Integer = Convert.ToInt32(TextBox6.Text)
        Image1.Height = imageH
    End Sub

    Protected Sub TextBox4_TextChanged(sender As Object, e As EventArgs) Handles TextBox4.TextChanged
        Dim imageW As Integer = Convert.ToInt32(TextBox4.Text)
        Image1.Width = imageW
    End Sub
End Class