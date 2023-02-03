Public Class miniProject1_1
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim listCount As Integer = ListBox1.Items.Count
        TextBox2.Text = ""
        For counter As Integer = 0 To (listCount - 1)
            If ListBox1.Items.Item(counter).Selected Then
                If counter = 0 Then
                    TextBox2.Text = ListBox1.Items.Item(counter).Value
                Else
                    TextBox2.Text = TextBox2.Text + "," + ListBox1.Items.Item(counter).Value
                End If

            End If
        Next
    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Dim myNewButton1 As New TextBox
        Dim value = DropDownList1.SelectedValue.ToString
        myNewButton1.ID = "text"
        myNewButton1.Text = "Place Value"
        PlaceHolder1.Controls.Add(myNewButton1)

    End Sub

    Protected Sub DropDownList1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles DropDownList1.SelectedIndexChanged
        TextBox3.Text = DropDownList1.SelectedValue

    End Sub
End Class