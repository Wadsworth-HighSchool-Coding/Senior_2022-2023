
Partial Class _Default
    Inherits Page


    Protected Sub Calendar1_SelectionChanged(sender As Object, e As EventArgs) Handles Calendar1.SelectionChanged
        TextBox1.Text = Calendar1.SelectedDates.ToString("dd/MM/yyy")
        Label1.Text = Calendar1.SelectedDate.ToString
    End Sub

    Protected Sub DropDownList1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles DropDownList1.SelectedIndexChanged

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim listCount As Integer = ListBox1.Items.Count

        For counter As Integer = 0 To (listCount - 1)
            If ListBox1.Items.Item(counter).Selected Then
                TextBox2.Text = TextBox2.Text + ", " + ListBox1.Items.Item(counter).Value
            End If
        Next
    End Sub
End Class