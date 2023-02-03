<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Notes4.aspx.vb" Inherits="Senior2023Example.Notes4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Notes 4</h1>
    <h1>
        <asp:TextBox ID="TextBox1" runat="server" Height="45px" Width="264px"></asp:TextBox>
    </h1>
    <asp:Button ID="Button1" runat="server" Text="Insert" />
<br />
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [colorList] WHERE [Id] = @Id" InsertCommand="INSERT INTO [colorList] ([color]) VALUES (@color)" SelectCommand="SELECT * FROM [colorList]" UpdateCommand="UPDATE [colorList] SET [color] = @color WHERE [Id] = @Id">
    <DeleteParameters>
        <asp:Parameter Name="Id" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:ControlParameter ControlID="TextBox1" Name="color" Type="String" />

    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="color" Type="String" />
        <asp:Parameter Name="Id" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
<asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" Width="338px">
    <Columns>
        <asp:CommandField ShowEditButton="True" />
        <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
        <asp:BoundField DataField="color" HeaderText="color" SortExpression="color" />
        <asp:TemplateField ShowHeader="False">
            <ItemTemplate>
                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" OnClientClick="return confirm('Are you sure you want to delete this row?');" CommandName="Delete" Text="Delete"></asp:LinkButton>
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
</asp:GridView>
    <br />
<br />
    <asp:Button ID="Button2" runat="server" Text="Make Me" />
    <br />
    <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
<br />
</asp:Content>
