<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Notes5.aspx.vb" Inherits="Senior2023Example.Notes5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>AJAX Toolkit Basics</h1>
    <p>Calendar Extender</p>
    <p>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <ajaxToolkit:CalendarExtender ID="TextBox1_CalendarExtender" runat="server" BehaviorID="TextBox1_CalendarExtender" TargetControlID="TextBox1" />
    </p>
    <p>&nbsp;</p>
    <p>Password Strength</p>
    <p>
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <ajaxToolkit:PasswordStrength ID="TextBox2_PasswordStrength" runat="server" BehaviorID="TextBox2_PasswordStrength" RequiresUpperAndLowerCaseCharacters="True" TargetControlID="TextBox2" />
    </p>
    <p>&nbsp;</p>
    <p>Color Picker</p>
    <p>
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        <ajaxToolkit:ColorPickerExtender ID="TextBox3_ColorPickerExtender" runat="server" BehaviorID="TextBox3_ColorPickerExtender" TargetControlID="TextBox3" />
    </p>
    <p>&nbsp;</p>
    <p>Slider Extender (set a bound control)</p>
    <p>Width</p>
    <p>
        <asp:TextBox ID="TextBox4" runat="server" AutoPostBack="True"></asp:TextBox>
        <ajaxToolkit:SliderExtender ID="TextBox4_SliderExtender" runat="server" BehaviorID="TextBox4_SliderExtender" BoundControlID="TextBox5" Maximum="150" Minimum="100" TargetControlID="TextBox4" />
    </p>
    <p>
        <asp:TextBox ID="TextBox5" runat="server" ReadOnly="True"></asp:TextBox>
        (read only)</p>
    <p>Height</p>
    <p>
        <asp:TextBox ID="TextBox6" runat="server" AutoPostBack="True"></asp:TextBox>
        <ajaxToolkit:SliderExtender ID="TextBox6_SliderExtender" runat="server" BehaviorID="TextBox4_SliderExtender" BoundControlID="TextBox7" Maximum="150" Minimum="100" TargetControlID="TextBox6" />
    </p>
    <p>
        <asp:TextBox ID="TextBox7" runat="server" ReadOnly="True"></asp:TextBox>
        (read only)</p>
    <p>
        &nbsp;</p>
    <p>
        <asp:Button ID="Button1" runat="server" Text="Change Image" />
    </p>
    <p>Image control</p>
    <p>
        <asp:Image ID="Image1" runat="server" Height="150px" ImageUrl="https://preview.redd.it/0t3j3xpo83371.jpg?auto=webp&amp;s=872789210c6e0a780205ce8d9f2bcf5d86ef44f2" Width="150px" />
    </p>
</asp:Content>
