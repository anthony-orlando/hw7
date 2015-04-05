<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Details.aspx.vb" Inherits="Details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="stylesheet" type="text/css" href="StyleSheet.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:msci3300_g1ConnectionString %>" DeleteCommand="DELETE FROM [acorlando_hw7] WHERE [team_id] = @team_id" InsertCommand="INSERT INTO [acorlando_hw7] ([team_Name], [Coach], [city], [number_Of_Players], [Wins], [Losses]) VALUES (@team_Name, @Coach, @city, @number_Of_Players, @Wins, @Losses)" SelectCommand="SELECT * FROM [acorlando_hw7] WHERE ([team_id] = @team_id)" UpdateCommand="UPDATE [acorlando_hw7] SET [team_Name] = @team_Name, [Coach] = @Coach, [city] = @city, [number_Of_Players] = @number_Of_Players, [Wins] = @Wins, [Losses] = @Losses WHERE [team_id] = @team_id">
        <DeleteParameters>
            <asp:Parameter Name="team_id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="team_Name" Type="String" />
            <asp:Parameter Name="Coach" Type="String" />
            <asp:Parameter Name="city" Type="String" />
            <asp:Parameter Name="number_Of_Players" Type="Int32" />
            <asp:Parameter Name="Wins" Type="Int32" />
            <asp:Parameter Name="Losses" Type="Int32" />
        </InsertParameters>
        <SelectParameters>
            <asp:QueryStringParameter Name="team_id" QueryStringField="team_id" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="team_Name" Type="String" />
            <asp:Parameter Name="Coach" Type="String" />
            <asp:Parameter Name="city" Type="String" />
            <asp:Parameter Name="number_Of_Players" Type="Int32" />
            <asp:Parameter Name="Wins" Type="Int32" />
            <asp:Parameter Name="Losses" Type="Int32" />
            <asp:Parameter Name="team_id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>




    <asp:Label ID="lbl_deletedTeam" runat="server"></asp:Label>




<asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="team_id" DataSourceID="SqlDataSource1" CssClass="cssdetailsview" Height="50px" Width="520px">
    <Fields>
        <asp:BoundField DataField="team_Name" HeaderText="Team Name" SortExpression="team_Name" />
        <asp:BoundField DataField="Coach" HeaderText="Coach" SortExpression="Coach" />
        <asp:BoundField DataField="city" HeaderText="City" SortExpression="city" />
        <asp:BoundField DataField="number_Of_Players" HeaderText="Number of Players" SortExpression="number_Of_Players" />
        <asp:BoundField DataField="Wins" HeaderText="Wins" SortExpression="Wins" />
        <asp:BoundField DataField="Losses" HeaderText="Losses" SortExpression="Losses" />
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
    </Fields>
</asp:DetailsView>


</asp:Content>

