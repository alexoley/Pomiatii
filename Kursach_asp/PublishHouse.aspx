<%@ Page Title="" Language="C#" MasterPageFile="~/MainPage.master" AutoEventWireup="true" CodeFile="PublishHouse.aspx.cs" Inherits="PublishHouses" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." HorizontalAlign="Center">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" Visible="False" />
            <asp:BoundField DataField="Name" HeaderText="Название" SortExpression="Name" />
            <asp:BoundField DataField="Address" HeaderText="Адрес" SortExpression="Address" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PeriodicalsConnectionString1 %>" DeleteCommand="DELETE FROM [PublishHouse] WHERE [Id] = @Id" InsertCommand="INSERT INTO [PublishHouse] ([Name], [Address]) VALUES (@Name, @Address)" ProviderName="<%$ ConnectionStrings:PeriodicalsConnectionString1.ProviderName %>" SelectCommand="SELECT [Id], [Name], [Address] FROM [PublishHouse]" UpdateCommand="UPDATE [PublishHouse] SET [Name] = @Name, [Address] = @Address WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Address" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

