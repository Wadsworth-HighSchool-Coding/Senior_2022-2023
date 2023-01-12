<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Notes3.aspx.vb" Inherits="Senior2023Example.Notes3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [schoolList] WHERE [Id] = @Id" InsertCommand="INSERT INTO [schoolList] ([schoolName], [mascot], [schoolColor]) VALUES (@schoolName, @mascot, @schoolColor)" SelectCommand="SELECT * FROM [schoolList]" UpdateCommand="UPDATE [schoolList] SET [schoolName] = @schoolName, [mascot] = @mascot, [schoolColor] = @schoolColor WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="schoolName" Type="String" />
            <asp:Parameter Name="mascot" Type="String" />
            <asp:Parameter Name="schoolColor" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="schoolName" Type="String" />
            <asp:Parameter Name="mascot" Type="String" />
            <asp:Parameter Name="schoolColor" Type="String" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="397px">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="schoolName" HeaderText="schoolName" SortExpression="schoolName" />
            <asp:BoundField DataField="mascot" HeaderText="mascot" SortExpression="mascot" />
            <asp:BoundField DataField="schoolColor" HeaderText="schoolColor" SortExpression="schoolColor" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
    <br />
    <br />
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" DataKeyNames="Id" DataSourceID="SqlDataSource1" GridLines="None" Width="485px">
        <Columns>
            <asp:CommandField ShowEditButton="True" />
            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="schoolName" HeaderText="schoolName" SortExpression="schoolName" />
            <asp:BoundField DataField="mascot" HeaderText="mascot" SortExpression="mascot" />
            <asp:BoundField DataField="schoolColor" HeaderText="schoolColor" SortExpression="schoolColor" />
            <asp:CommandField ShowDeleteButton="True" />
        </Columns>
        <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
        <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
        <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
        <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#594B9C" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#33276A" />
    </asp:GridView>
    <br />
    <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" Width="544px">
        <Columns>
            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="schoolName" HeaderText="schoolName" SortExpression="schoolName" />
            <asp:BoundField DataField="mascot" HeaderText="mascot" SortExpression="mascot" />
            <asp:TemplateField HeaderText="schoolColor" SortExpression="schoolColor">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("schoolColor") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("schoolColor") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
    <hr />
    <br />
    <asp:SqlDataSource ID="SqlDataSourceSchools" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [schoolList] WHERE [Id] = @Id" InsertCommand="INSERT INTO [schoolList] ([schoolName], [mascot], [schoolColor]) VALUES (@schoolName, @mascot, @schoolColor)" SelectCommand="SELECT * FROM [schoolList]" UpdateCommand="UPDATE [schoolList] SET [schoolName] = @schoolName, [mascot] = @mascot, [schoolColor] = @schoolColor WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="schoolName" Type="String" />
            <asp:Parameter Name="mascot" Type="String" />
            <asp:Parameter Name="schoolColor" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="schoolName" Type="String" />
            <asp:Parameter Name="mascot" Type="String" />
            <asp:Parameter Name="schoolColor" Type="String" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSourceColorList" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [color] FROM [colorList]"></asp:SqlDataSource>
    <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSourceSchools" ForeColor="#333333" GridLines="None" Width="563px">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:CommandField ShowEditButton="True" />
            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="schoolName" HeaderText="schoolName" SortExpression="schoolName" />
            <asp:BoundField DataField="mascot" HeaderText="mascot" SortExpression="mascot" />
            <asp:TemplateField HeaderText="schoolColor" SortExpression="schoolColor">
                <EditItemTemplate>
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSourceColorList" DataTextField="color" DataValueField="color" SelectedValue='<%# Bind("schoolColor") %>'>
                    </asp:DropDownList>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("schoolColor") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:CommandField ShowDeleteButton="True" />
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>
    <br />
</asp:Content>
