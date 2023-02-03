Public Class Notes4
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs)

    End Sub

    Protected Sub Button1_Click1(sender As Object, e As EventArgs) Handles Button1.Click
        SqlDataSource1.Insert()
    End Sub

    Protected Sub SqlDataSource1_Selecting()

    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Dim myNewButton1 As New Button
        myNewButton1.ID = "Btn1"
        myNewButton1.Text = "Newly created Button"
        myNewButton1.OnClientClick = "alert('Hello')"
        myNewButton1.CssClass = "completeButtons"
        PlaceHolder1.Controls.Add(myNewButton1)
    End Sub
End Class