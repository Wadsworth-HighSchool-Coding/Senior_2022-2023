<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Notes6.aspx.vb" Inherits="Senior2023Example.Notes6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Searching a Gridview(table)<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [color] FROM [colorList] ORDER BY [color]"></asp:SqlDataSource>
</h1>
<p>
    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="color" DataValueField="color">
    </asp:DropDownList>
</p>
<p>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [schoolList] WHERE [Id] = @Id" InsertCommand="INSERT INTO [schoolList] ([schoolName], [mascot], [schoolColor]) VALUES (@schoolName, @mascot, @schoolColor)" SelectCommand="SELECT * FROM [schoolList] WHERE ([schoolColor] = @schoolColor)" UpdateCommand="UPDATE [schoolList] SET [schoolName] = @schoolName, [mascot] = @mascot, [schoolColor] = @schoolColor WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="schoolName" Type="String" />
            <asp:Parameter Name="mascot" Type="String" />
            <asp:Parameter Name="schoolColor" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="schoolColor" PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="schoolName" Type="String" />
            <asp:Parameter Name="mascot" Type="String" />
            <asp:Parameter Name="schoolColor" Type="String" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</p>
<p>Search by color:</p>
<asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource2" Width="338px">
    <Columns>
        <asp:CommandField ShowEditButton="True" />
        <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
        <asp:BoundField DataField="schoolName" HeaderText="schoolName" SortExpression="schoolName" />
        <asp:BoundField DataField="mascot" HeaderText="mascot" SortExpression="mascot" />
        <asp:BoundField DataField="schoolColor" HeaderText="schoolColor" SortExpression="schoolColor" />
        <asp:CommandField ShowDeleteButton="True" />
    </Columns>
</asp:GridView>
    <p>
        &nbsp;</p>
    <p>
        (Part 2 )</p>
    <p>
        Need a grid vew, datasource and search by contains</p>
    <p>
        &nbsp;</p>
    <p>
        <asp:TextBox ID="TextBox1" runat="server" AutoPostBack="True"></asp:TextBox>
</p>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [schoolList] WHERE ([schoolName] = @schoolName)">
        <SelectParameters>
            <asp:ControlParameter ControlID="TextBox1" Name="schoolName" PropertyName="Text" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
<asp:GridView ID="GridView2" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource3" Width="338px">
    <Columns>
        <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
        <asp:BoundField DataField="schoolName" HeaderText="schoolName" SortExpression="schoolName" />
        <asp:BoundField DataField="mascot" HeaderText="mascot" SortExpression="mascot" />
        <asp:BoundField DataField="schoolColor" HeaderText="schoolColor" SortExpression="schoolColor" />
    </Columns>
</asp:GridView>
    <p>
        &nbsp;</p>
</asp:Content>
