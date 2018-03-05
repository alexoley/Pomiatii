<%@ Page Title="" Language="C#" MasterPageFile="~/MainPage.master" AutoEventWireup="true" CodeFile="GCulture.aspx.cs" Inherits="GCulture" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <br />
    <br />
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." HorizontalAlign="Center">
    <Columns>
        <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
        <asp:BoundField DataField="Type" HeaderText="Type" SortExpression="Type" />
        <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
        <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
        <asp:BoundField DataField="Periodicity" HeaderText="Periodicity" SortExpression="Periodicity" />
        <asp:BoundField DataField="id_PublishHouse" HeaderText="id_PublishHouse" SortExpression="id_PublishHouse" />
        <asp:BoundField DataField="id_Genre" HeaderText="id_Genre" SortExpression="id_Genre" />
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PeriodicalsConnectionString1 %>" DeleteCommand="DELETE FROM [Edition] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Edition] ([Type], [Title], [Price], [Periodicity], [id_PublishHouse], [id_Genre]) VALUES (@Type, @Title, @Price, @Periodicity, @id_PublishHouse, @id_Genre)" SelectCommand="SELECT [Id], [Type], [Title], [Price], [Periodicity], [id_PublishHouse], [id_Genre] FROM [Edition] WHERE (([id_Genre] = @id_Genre) AND ([Type] = @Type))" UpdateCommand="UPDATE [Edition] SET [Type] = @Type, [Title] = @Title, [Price] = @Price, [Periodicity] = @Periodicity, [id_PublishHouse] = @id_PublishHouse, [id_Genre] = @id_Genre WHERE [Id] = @Id">
    <DeleteParameters>
        <asp:Parameter Name="Id" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="Type" Type="String" />
        <asp:Parameter Name="Title" Type="String" />
        <asp:Parameter Name="Price" Type="Single" />
        <asp:Parameter Name="Periodicity" Type="String" />
        <asp:Parameter Name="id_PublishHouse" Type="Int32" />
        <asp:Parameter Name="id_Genre" Type="Int32" />
    </InsertParameters>
    <SelectParameters>
        <asp:Parameter DefaultValue="4" Name="id_Genre" Type="Int32" />
        <asp:Parameter DefaultValue="magazine" Name="Type" Type="String" />
    </SelectParameters>
    <UpdateParameters>
        <asp:Parameter Name="Type" Type="String" />
        <asp:Parameter Name="Title" Type="String" />
        <asp:Parameter Name="Price" Type="Single" />
        <asp:Parameter Name="Periodicity" Type="String" />
        <asp:Parameter Name="id_PublishHouse" Type="Int32" />
        <asp:Parameter Name="id_Genre" Type="Int32" />
        <asp:Parameter Name="Id" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
</asp:Content>

