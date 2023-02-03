<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="assignment1.aspx.vb" Inherits="Senior2023Example.assignment1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="accordionStyles.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <h1>AJAX Toolkit Project</h1>
    <form id="form1" runat="server">
        <div>
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
            <br />
            Only digits<br />
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <ajaxToolkit:FilteredTextBoxExtender ID="TextBox1_FilteredTextBoxExtender" FilterType="Numbers" runat="server" TargetControlID="TextBox1" />
            <br />
            <br />
            Only lower-case</div>
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <ajaxToolkit:FilteredTextBoxExtender ID="TextBox2_FilteredTextBoxExtender" FilterType="LowercaseLetters" runat="server" TargetControlID="TextBox2" />
        <br />
        <br />
        <br />
        Only math symbols<br />
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        <ajaxToolkit:FilteredTextBoxExtender ID="TextBox3_FilteredTextBoxExtender" FilterType="Custom" ValidChars="+-=/*()." runat="server" TargetControlID="TextBox3" />
        <br />
        <br />
        <br />
        <br />
        <ajaxtoolkit:accordion id="MyAccordion" runat="server" selectedindex="0" headercssclass="accordionHeader" headerselectedcssclass="accordionHeaderSelected" contentcssclass="accordionContent" fadetransitions="false" framespersecond="40" transitionduration="250" autosize="None" requireopenedpane="false" suppressheaderpostbacks="true" width="500px">
     <panes>
         <ajaxtoolkit:accordionpane id="AccordionPane1" runat="server">
             <header>
                 <%--//--- Heading -----%>
                 <span class="accordionLink">1. Asp .Net</span>
             </header>
             <%--//--- Content -----%>
             <content>
                 ASP.NET is a server-side Web application framework designed for Web development
             to produce dynamic Web pages.
             </content>
         </ajaxtoolkit:accordionpane>
         <ajaxtoolkit:accordionpane id="AccordionPane2" runat="server">
             <%--//--- Heading -----%>
             <header>
                 <span class="accordionLink">2. Asp .Net MVC</span>
             </header>
             <%--//--- Content -----%>
             <content>
                 The Model-View-Controller (MVC) architectural pattern separates an application into
             three main components: the model, the view, and the controller.
             </content>
         </ajaxtoolkit:accordionpane>
         <ajaxtoolkit:accordionpane id="AccordionPane3" runat="server">
             <%--//--- Heading -----%>
             <header>
                 <span class="accordionLink">3. Asp .Net Web API</span>
             </header>
             <%--//--- Content -----%>
             <content>
                 ASP.NET Web API is a framework that makes it easy to build HTTP services that reach
             a broad range of clients, including browsers and mobile devices. ASP.NET Web API
             is an ideal platform for building RESTful applications on the .NET Framework.
             </content>
         </ajaxtoolkit:accordionpane>
         <ajaxtoolkit:accordionpane id="AccordionPane4" runat="server">
             <%--//--- Heading -----%>
             <header>
                 <span class="accordionLink">4. Asp .Net Ajax Control Toolkit</span>
             </header>
             <%--//--- Content -----%>
             <content>
                 The ASP.NET AJAX Control Toolkit is an open-source project built on top of the Microsoft
             ASP.NET AJAX framework.
             </content>
         </ajaxtoolkit:accordionpane>
     </panes>
 </ajaxtoolkit:accordion>
        <br />
        <asp:Label ID="Label1" runat="server" Text="Countries"></asp:Label>
        <ajaxToolkit:DropDownExtender ID="Label1_DropDownExtender" runat="server" BehaviorID="Label1_DropDownExtender" DropDownControlID="pnItems" DynamicServicePath="" TargetControlID="Label1">
        </ajaxToolkit:DropDownExtender>
        <br />
        <asp:Panel ID="pnItems" runat="server" BorderColor="BlueViolet" BorderWidth="1">
            <asp:BulletedList ID="BulletedList1" runat="server">
                <asp:ListItem>Australia</asp:ListItem>
                <asp:ListItem>America</asp:ListItem>
                <asp:ListItem>Africa</asp:ListItem>
                <asp:ListItem>India</asp:ListItem>
            </asp:BulletedList>
        </asp:Panel>
        
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    </form>
</body>
</html>
