<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Notes1.aspx.vb" Inherits="Senior2023Example.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Notes Part 1:<asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" Width="350px">
        <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
        <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
        <OtherMonthDayStyle ForeColor="#999999" />
        <SelectedDayStyle BackColor="#333399" ForeColor="White" />
        <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
        <TodayDayStyle BackColor="#CCCCCC" />
        </asp:Calendar>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </h1>
    <p>&nbsp;</p>
    <p>
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem>Steelers</asp:ListItem>
            <asp:ListItem>Patriots</asp:ListItem>
        </asp:DropDownList>
    </p>
    <p>&nbsp;</p>
    <p>
        <asp:ListBox ID="ListBox1" runat="server" Rows="5" SelectionMode="Multiple">
            <asp:ListItem>Red</asp:ListItem>
            <asp:ListItem>White</asp:ListItem>
            <asp:ListItem>Blue</asp:ListItem>
            <asp:ListItem>Orange</asp:ListItem>
            <asp:ListItem>Black</asp:ListItem>
        </asp:ListBox>
    </p>
    <p>
        <asp:Button ID="Button1" runat="server" Text="Button" />
    </p>
    <p>
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    </p>
</asp:Content>

