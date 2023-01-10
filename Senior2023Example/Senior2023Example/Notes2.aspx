<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Notes2.aspx.vb" Inherits="Senior2023Example.Notes2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Notes2</h1>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [schoolList]"></asp:SqlDataSource>
    <asp:BulletedList ID="BulletedList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="schoolName" DataValueField="schoolName">
    </asp:BulletedList>
    <asp:CheckBoxList ID="CheckBoxList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="schoolName" DataValueField="schoolName">
    </asp:CheckBoxList>
    <br />
    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="schoolName" DataValueField="schoolName">
    </asp:DropDownList>
    <br />
    <br />
    <asp:ListBox ID="ListBox1" runat="server" DataSourceID="SqlDataSource1" DataTextField="schoolName" DataValueField="schoolName"></asp:ListBox>
    <asp:CheckBoxList ID="CheckBoxList2" runat="server" DataSourceID="SqlDataSource1" DataTextField="schoolName" DataValueField="schoolName">
    </asp:CheckBoxList>
</asp:Content>
