<%@ Page Title="Home Page" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.vb" Inherits="_2023ASPTest._Default" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

   

    <p>
        <br />
        Gridview:<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [Table] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Table] ([LaptopName], [Brand], [ReleaseDate], [AmID], [ModelNum], [Weight], [country], [price]) VALUES (@LaptopName, @Brand, @ReleaseDate, @AmID, @ModelNum, @Weight, @country, @price)" SelectCommand="SELECT * FROM [Table]" UpdateCommand="UPDATE [Table] SET [LaptopName] = @LaptopName, [Brand] = @Brand, [ReleaseDate] = @ReleaseDate, [AmID] = @AmID, [ModelNum] = @ModelNum, [Weight] = @Weight, [country] = @country, [price] = @price WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:ControlParameter ControlID="LapName" Name="LaptopName" Type="String" />
                <asp:ControlParameter ControlID="BrandList" Name="Brand" Type="String" />
                <asp:ControlParameter ControlID="Date" Name="ReleaseDate" Type="String" />
                <asp:ControlParameter ControlID="AmID" Name="AmID" Type="String" />
                <asp:ControlParameter ControlID="ModelNum" Name="ModelNum" Type="String" />
                <asp:ControlParameter ControlID="Weight" Name="Weight" Type="String" />
                <asp:ControlParameter ControlID="country" Name="country" Type="String" />
                <asp:ControlParameter ControlID="price" Name="price" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="LaptopName" Type="String" />
                <asp:Parameter Name="Brand" Type="String" />
                <asp:Parameter Name="ReleaseDate" Type="String" />
                <asp:Parameter Name="AmID" Type="String" />
                <asp:Parameter Name="ModelNum" Type="String" />
                <asp:Parameter Name="Weight" Type="String" />
                <asp:Parameter Name="country" Type="String" />
                <asp:Parameter Name="price" Type="String" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
    <p>
        <asp:GridView ID="products" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" AllowSorting="True" Width="854px">
            <Columns>
                <asp:CommandField ShowEditButton="True" />
                <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" InsertVisible="False" ReadOnly="True" />
                <asp:BoundField DataField="LaptopName" HeaderText="LaptopName" SortExpression="LaptopName" />
                <asp:TemplateField HeaderText="Brand" SortExpression="Brand">
                    <EditItemTemplate>
                        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="Brands" DataTextField="Brand" DataValueField="Brand" SelectedValue='<%# Bind("Brand") %>'>
                        </asp:DropDownList>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("Brand") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="ReleaseDate" SortExpression="ReleaseDate">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("ReleaseDate") %>'></asp:TextBox>
                        <ajaxToolkit:CalendarExtender ID="TextBox2_CalendarExtender" runat="server" TargetControlID="TextBox2" />
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("ReleaseDate") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="AmID" HeaderText="AmID" SortExpression="AmID" />
                <asp:BoundField DataField="ModelNum" HeaderText="ModelNum" SortExpression="ModelNum" />
                <asp:BoundField DataField="Weight" HeaderText="Weight" SortExpression="Weight" />
                <asp:TemplateField HeaderText="country" SortExpression="country">
                    <EditItemTemplate>
                        <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="Country" DataValueField="Country" SelectedValue='<%# Bind("Country") %>'>
                        </asp:DropDownList>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("country") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                <asp:CommandField ShowDeleteButton="True" />
            </Columns>
        </asp:GridView>
    </p>
    <p>
        <asp:SqlDataSource ID="Brands" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [Brands]"></asp:SqlDataSource>
    </p>
    <p>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [Counties] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Counties] ([Country]) VALUES (@Country)" SelectCommand="SELECT * FROM [Counties]" UpdateCommand="UPDATE [Counties] SET [Country] = @Country WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Country" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Country" Type="String" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
    <p>
        <asp:DropDownList ID="BrandList" runat="server" DataSourceID="Brands" DataTextField="Brand" DataValueField="Brand">
        </asp:DropDownList>
    </p>
    <p>
        <asp:DropDownList ID="country" runat="server" DataSourceID="SqlDataSource2" DataTextField="Country" DataValueField="Country">
        </asp:DropDownList>
    </p>
    <p>
        <asp:TextBox ID="LapName" runat="server"></asp:TextBox>
        :Name</p>
    <p>
        <asp:TextBox ID="Date" runat="server"></asp:TextBox>
        <ajaxToolkit:CalendarExtender ID="Date_CalendarExtender" runat="server" TargetControlID="Date" />
        Date</p>
    <p>
        <asp:TextBox ID="amID" runat="server"></asp:TextBox>
        AmID</p>
    <p>
        <asp:TextBox ID="ModelNum" runat="server"></asp:TextBox>
        ModelNum</p>
    <p>
        <asp:TextBox ID="Weight" runat="server"></asp:TextBox>
        Weight</p>
    <p>
        <asp:TextBox ID="price" runat="server"></asp:TextBox>
        Price</p>
    <p>
        <asp:Button ID="Submit" runat="server" Text="Button" />
    </p>
    <p>
        &nbsp;</p>
    <p>
        <asp:GridView ID="cOrigin" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource2" Width="149px">
            <Columns>
                <asp:CommandField ShowEditButton="True" />
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" />
                <asp:CommandField ShowDeleteButton="True" />
            </Columns>
        </asp:GridView>
    </p>
    <p>
    </p>

   

</asp:Content>
