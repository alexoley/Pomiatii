<%@ Page Title="" Language="C#" MasterPageFile="~/MainPage.master" AutoEventWireup="true" CodeFile="Sub.aspx.cs" Inherits="Sub" %>

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
    <br />
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PeriodicalsConnectionString1 %>" DeleteCommand="DELETE FROM [Sub] WHERE [id] = @id" InsertCommand="INSERT INTO [Sub] ([id_Edition], [id_Subscriber], [period], [cost], [Registration_date]) VALUES (@id_Edition, @id_Subscriber, @period, @cost, @Registration_date)" SelectCommand="SELECT [Sub].[id], [Sub].[id_Edition], [Sub].[id_Subscriber], [Sub].[period], [Sub].[cost], [Sub].[Registration_date], [Edition].[Title], [Subscriber].[First name], [Subscriber].[Last name] From [Sub], [Edition], [Subscriber] Where [Sub].[id_Edition]=[Edition].[id] AND [Sub].[id_Subscriber]=[Subscriber].[id];" UpdateCommand="UPDATE [Sub] SET [id_Edition] = @id_Edition, [id_Subscriber] = @id_Subscriber, [period] = @period, [cost] = @cost, [Registration_date] = @Registration_date WHERE [id] = @id">
        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="id_Edition" Type="Int32" />
            <asp:Parameter Name="id_Subscriber" Type="Int32" />
            <asp:Parameter Name="period" Type="Int32" />
            <asp:Parameter Name="cost" Type="Int32" />
            <asp:Parameter Name="Registration_date" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="id_Edition" Type="Int32" />
            <asp:Parameter Name="id_Subscriber" Type="Int32" />
            <asp:Parameter Name="period" Type="Int32" />
            <asp:Parameter Name="cost" Type="Int32" />
            <asp:Parameter Name="Registration_date" Type="String" />
            <asp:Parameter Name="id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:PeriodicalsConnectionString1 %>" SelectCommand="SELECT [Id], [Last name] AS Last_name, [First name] AS First_name, [Patronymic] FROM [Subscriber]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:PeriodicalsConnectionString1 %>" SelectCommand="SELECT [Id], [Last name] AS Last_name FROM [Subscriber] WHERE ([Id] = @Id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList3" Name="Id" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:PeriodicalsConnectionString1 %>" SelectCommand="SELECT [Id], [Patronymic] FROM [Subscriber] WHERE (([Id] = @Id) AND ([Id] = @Id2))">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList3" Name="Id" PropertyName="SelectedValue" Type="Int32" />
            <asp:ControlParameter ControlID="DropDownList4" Name="Id2" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:PeriodicalsConnectionString1 %>" SelectCommand="SELECT [Id], [Address] FROM [Subscriber] WHERE (([Id] = @Id) AND ([Id] = @Id2) AND ([Id] = @Id3))">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList3" Name="Id" PropertyName="SelectedValue" Type="Int32" />
            <asp:ControlParameter ControlID="DropDownList4" Name="Id2" PropertyName="SelectedValue" Type="Int32" />
            <asp:ControlParameter ControlID="DropDownList5" Name="Id3" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:PeriodicalsConnectionString1 %>" SelectCommand="SELECT * FROM [Edition]"></asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display.">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" Visible="False" />
            <asp:BoundField DataField="id_Edition" HeaderText="id_Издания" SortExpression="id_Edition" />
            <asp:BoundField DataField="id_Subscriber" HeaderText="id_Подписчика" SortExpression="id_Subscriber" />
            <asp:BoundField DataField="period" HeaderText="Период подписки" SortExpression="period" />
            <asp:BoundField DataField="cost" HeaderText="Стоимость" SortExpression="cost" />
            <asp:BoundField DataField="Registration_date" HeaderText="Дата регистрации" SortExpression="Registration_date" />
            <asp:BoundField DataField="Title" HeaderText="Название издания" SortExpression="Title" />
            <asp:BoundField DataField="First name" HeaderText="Имя подписчика" SortExpression="First name" />
            <asp:BoundField DataField="Last name" HeaderText="Фамилия Подписчика" SortExpression="Last name" />
        </Columns>
    </asp:GridView>
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label1" runat="server" Text="Имя: "></asp:Label>
    <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="First_name" DataValueField="Id">
    </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label2" runat="server" Text="Фамилия: "></asp:Label>
&nbsp;<asp:DropDownList ID="DropDownList4" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource3" DataTextField="Last_name" DataValueField="Id">
    </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label3" runat="server" Text="Отчество: "></asp:Label>
    <asp:DropDownList ID="DropDownList5" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource4" DataTextField="Patronymic" DataValueField="Id">
    </asp:DropDownList>
&nbsp;&nbsp;
    <asp:Label ID="Label4" runat="server" Text="Адрес: "></asp:Label>
    <asp:DropDownList ID="DropDownList6" runat="server" DataSourceID="SqlDataSource5" DataTextField="Address" DataValueField="Id">
    </asp:DropDownList>
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label5" runat="server" Text="Название издания: "></asp:Label>
    <asp:DropDownList ID="DropDownList7" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource6" DataTextField="Title" DataValueField="Id" style="margin-left: 0px; margin-bottom: 0px">
    </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label6" runat="server" Text="Период(дней): "></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Оформить подписку" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <br />
</asp:Content>

