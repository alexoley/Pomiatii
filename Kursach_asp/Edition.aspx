<%@ Page Title="" Language="C#" MasterPageFile="~/MainPage.master" AutoEventWireup="true" CodeFile="Edition.aspx.cs" Inherits="Editions" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    &nbsp;<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." HorizontalAlign="Center">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" Visible="False" />
            <asp:BoundField DataField="id_PublishHouse" HeaderText="id_Издательства" SortExpression="id_PublishHouse" />
            <asp:BoundField DataField="id_Genre" HeaderText="id_Жанра" SortExpression="id_Genre" />
            <asp:BoundField DataField="type" HeaderText="Тип" SortExpression="type" />
            <asp:BoundField DataField="Title" HeaderText="Заголовок" SortExpression="Title" />
            <asp:BoundField DataField="Price" HeaderText="Цена(за шт.)" SortExpression="Price" />
            <asp:BoundField DataField="Periodicity" HeaderText="Периодичность(дней)" SortExpression="Periodicity" />
            <asp:BoundField DataField="Name" HeaderText="Издательство" SortExpression="Name" />
            <asp:BoundField DataField="Name1" HeaderText="Жанр" SortExpression="Name1" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PeriodicalsConnectionString1 %>" DeleteCommand="DELETE FROM [Edition] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Edition] ([Type], [Title], [Price], [Periodicity], [id_PublishHouse], [id_Genre]) VALUES (@Type, @Title, @Price, @Periodicity, @id_PublishHouse, @id_Genre)" SelectCommand="select e.id, e.id_PublishHouse, e.id_Genre ,e.type, e.Title, e.Price, e.Periodicity,p.Name, g.Name From Edition e, PublishHouse p, Genre g Where id_PublishHouse=p.id and id_Genre=g.id and e.Type = @Type" UpdateCommand="UPDATE [Edition] SET [Type] = @Type, [Title] = @Title, [Price] = @Price, [Periodicity] = @Periodicity, [id_PublishHouse] = @id_PublishHouse, [id_Genre] = @id_Genre WHERE [Id] = @Id">
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
            <asp:ControlParameter ControlID="DropDownList1" Name="Type" PropertyName="SelectedValue" />
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
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" >
        <asp:ListItem>magazine</asp:ListItem>
        <asp:ListItem>newspaper</asp:ListItem>
    </asp:DropDownList>
    </asp:Content>

