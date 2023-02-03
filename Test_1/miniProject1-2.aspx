<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="miniProject1-2.aspx.vb" Inherits="Test_1.miniProject1_2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        <h1>Page 1-2, Working with Data Controls</h1>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [NFL] WHERE [Id] = @Id" InsertCommand="INSERT INTO [NFL] ([TeamName], [Wins], [Losses], [Ties], [Division], [Mascot], [lastGamePlayedDate]) VALUES (@TeamName, @Wins, @Losses, @Ties, @Division, @Mascot, @lastGamePlayedDate)" SelectCommand="SELECT * FROM [NFL]" UpdateCommand="UPDATE [NFL] SET [TeamName] = @TeamName, [Wins] = @Wins, [Losses] = @Losses, [Ties] = @Ties, [Division] = @Division, [Mascot] = @Mascot, [lastGamePlayedDate] = @lastGamePlayedDate WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:ControlParameter ControlID="TextName" Name="TeamName" Type="String" />
                <asp:ControlParameter ControlID="TextWins" Name="Wins" Type="String" />
                <asp:ControlParameter ControlID="TextLosses" Name="Losses" Type="String" />
                <asp:ControlParameter ControlID="TextTies" Name="Ties" Type="String" />
                <asp:ControlParameter ControlID="TextDivision" Name="Division" Type="String" />
                <asp:ControlParameter ControlID="TextMascot" Name="Mascot" Type="String" />
                <asp:ControlParameter ControlID="TextlastGamePlayedDate" Name="lastGamePlayedDate" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="TeamName" Type="String" />
                <asp:Parameter Name="Wins" Type="String" />
                <asp:Parameter Name="Losses" Type="String" />
                <asp:Parameter Name="Ties" Type="String" />
                <asp:Parameter Name="Division" Type="String" />
                <asp:Parameter Name="Mascot" Type="String" />
                <asp:Parameter Name="lastGamePlayedDate" Type="String" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [divisionList]"></asp:SqlDataSource>
    </p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" Width="688px">
            <Columns>
                <asp:CommandField ShowEditButton="True" />
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="TeamName" HeaderText="TeamName" SortExpression="TeamName" />
                <asp:BoundField DataField="Wins" HeaderText="Wins" SortExpression="Wins" />
                <asp:BoundField DataField="Losses" HeaderText="Losses" SortExpression="Losses" />
                <asp:BoundField DataField="Ties" HeaderText="Ties" SortExpression="Ties" />
                <asp:TemplateField HeaderText="Division" SortExpression="Division">
                    <EditItemTemplate>
                        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="Division" DataValueField="Division" SelectedValue='<%# Bind("Division") %>'>
                        </asp:DropDownList>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("Division") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="Mascot" HeaderText="Mascot" SortExpression="Mascot" />
                <asp:TemplateField HeaderText="lastGamePlayedDate" SortExpression="lastGamePlayedDate">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("lastGamePlayedDate") %>'></asp:TextBox>
                        <ajaxToolkit:CalendarExtender ID="TextBox1_CalendarExtender" runat="server" TargetControlID="TextBox1" />
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("lastGamePlayedDate") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField ShowHeader="False">
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" OnClientClick="return confirm('Are you sure you want to delete this row?');" CommandName="Delete" Text="Delete"></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </p>
    <p>
    </p>
    <p>
        <asp:Label ID="Label2" runat="server" Text="Team Name:"></asp:Label>
        <asp:TextBox ID="TextName" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="Label3" runat="server" Text="Wins:"></asp:Label>
        <asp:TextBox ID="TextWins" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="Label4" runat="server" Text="Losses:"></asp:Label>
        <asp:TextBox ID="TextLosses" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="Label8" runat="server" Text="Ties:"></asp:Label>
        <asp:TextBox ID="TextTies" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="Label5" runat="server" Text="Division:"></asp:Label>
        <asp:DropDownList ID="TextDivision" runat="server" DataSourceID="SqlDataSource2" DataTextField="Division" DataValueField="Division">
        </asp:DropDownList>
    </p>
    <p>
        <asp:Label ID="Label6" runat="server" Text="Mascot:"></asp:Label>
        <asp:TextBox ID="TextMascot" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="Label7" runat="server" Text="Last Game Played Date:"></asp:Label>
        <asp:TextBox ID="TextlastGamePlayedDate" runat="server"></asp:TextBox>
        <ajaxToolkit:CalendarExtender ID="TextlastGamePlayedDate_CalendarExtender" runat="server" TargetControlID="TextlastGamePlayedDate" />
    </p>
    <p>
        &nbsp;</p>
    <p>
        <asp:Button ID="Button1" runat="server" Text="Insert" />
    </p>
</asp:Content>
