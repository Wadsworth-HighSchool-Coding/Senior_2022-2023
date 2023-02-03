<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="miniProject1-1.aspx.vb" Inherits="Test_1.miniProject1_1" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        <br />
        <h1>Page 1-1, Basic Applications<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [NFL] WHERE [Id] = @Id" InsertCommand="INSERT INTO [NFL] ([TeamName], [Wins], [Losses], [Ties], [Division], [Mascot], [lastGamePlayedDate]) VALUES (@TeamName, @Wins, @Losses, @Ties, @Division, @Mascot, @lastGamePlayedDate)" SelectCommand="SELECT * FROM [NFL]" UpdateCommand="UPDATE [NFL] SET [TeamName] = @TeamName, [Wins] = @Wins, [Losses] = @Losses, [Ties] = @Ties, [Division] = @Division, [Mascot] = @Mascot, [lastGamePlayedDate] = @lastGamePlayedDate WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="TeamName" Type="String" />
                <asp:Parameter Name="Wins" Type="String" />
                <asp:Parameter Name="Losses" Type="String" />
                <asp:Parameter Name="Ties" Type="String" />
                <asp:Parameter Name="Division" Type="String" />
                <asp:Parameter Name="Mascot" Type="String" />
                <asp:Parameter Name="lastGamePlayedDate" Type="String" />
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
    </h1>
    <asp:Label ID="Label1" runat="server" Text="Date: "></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <ajaxToolkit:CalendarExtender ID="TextBox1_CalendarExtender" runat="server" TargetControlID="TextBox1" />
    </p>
    <p>
        <asp:ListBox ID="ListBox1" runat="server" DataSourceID="SqlDataSource1" DataTextField="TeamName" DataValueField="TeamName" SelectionMode="Multiple"></asp:ListBox>
    </p>
    <p>
        <asp:Button ID="Button1" runat="server" Text="Button" />
    </p>
    <p>
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    </p>
    <p>
        &nbsp;</p>
    <p>
    </p>
    <p>
        <asp:DropDownList ID="DropDownList1"  runat="server" DataSourceID="SqlDataSource1" DataTextField="TeamName" DataValueField="TeamName" AutoPostBack="True">
        </asp:DropDownList>
    </p>
    <p>
 
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
    <p>
 
        &nbsp;<br />
    <asp:Button ID="Button2" runat="server" Text="Make Me" />
    <br />
    <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
</asp:Content>
