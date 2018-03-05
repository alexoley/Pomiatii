<%@ Page Title="" Language="C#" MasterPageFile="~/MainPage.master" AutoEventWireup="true" CodeFile="Subscriber.aspx.cs" Inherits="Subscribers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <br />
    <br />
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource2" EmptyDataText="There are no data records to display." HorizontalAlign="Center">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" Visible="False" />
            <asp:BoundField DataField="Last_name" HeaderText="Фамилия" SortExpression="Last_name" />
            <asp:BoundField DataField="First_name" HeaderText="Имя" SortExpression="First_name" />
            <asp:BoundField DataField="Patronymic" HeaderText="Отчество" SortExpression="Patronymic" />
            <asp:BoundField DataField="Address" HeaderText="Адрес" SortExpression="Address" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:PeriodicalsConnectionString1 %>" DeleteCommand="DELETE FROM [Subscriber] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Subscriber] ([Last name], [First name], [Patronymic], [Address]) VALUES (@Last_name, @First_name, @Patronymic, @Address)" ProviderName="<%$ ConnectionStrings:PeriodicalsConnectionString1.ProviderName %>" SelectCommand="SELECT [Id], [Last name] AS Last_name, [First name] AS First_name, [Patronymic], [Address] FROM [Subscriber]" UpdateCommand="UPDATE [Subscriber] SET [Last name] = @Last_name, [First name] = @First_name, [Patronymic] = @Patronymic, [Address] = @Address WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Last_name" Type="String" />
            <asp:Parameter Name="First_name" Type="String" />
            <asp:Parameter Name="Patronymic" Type="String" />
            <asp:Parameter Name="Address" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Last_name" Type="String" />
            <asp:Parameter Name="First_name" Type="String" />
            <asp:Parameter Name="Patronymic" Type="String" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <br />
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PeriodicalsConnectionString1 %>" DeleteCommand="DELETE FROM [Subscriber] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Subscriber] ([Last name], [First name], [Patronymic], [Address]) VALUES (@Last_name, @First_name, @Patronymic, @Address)" ProviderName="<%$ ConnectionStrings:PeriodicalsConnectionString1.ProviderName %>" SelectCommand="SELECT [Id], [Last name] AS Last_name, [First name] AS First_name, [Patronymic], [Address] FROM [Subscriber]" UpdateCommand="UPDATE [Subscriber] SET [Last name] = @Last_name, [First name] = @First_name, [Patronymic] = @Patronymic, [Address] = @Address WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Last_name" Type="String" />
            <asp:Parameter Name="First_name" Type="String" />
            <asp:Parameter Name="Patronymic" Type="String" />
            <asp:Parameter Name="Address" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Last_name" Type="String" />
            <asp:Parameter Name="First_name" Type="String" />
            <asp:Parameter Name="Patronymic" Type="String" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

