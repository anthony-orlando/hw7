<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:msci3300_g1ConnectionString %>" DeleteCommand="DELETE FROM [acorlando_hw7] WHERE [team_id] = @team_id" InsertCommand="INSERT INTO [acorlando_hw7] ([team_Name], [Coach], [city], [number_Of_Players], [Wins], [Losses]) VALUES (@team_Name, @Coach, @city, @number_Of_Players, @Wins, @Losses)" SelectCommand="SELECT * FROM [acorlando_hw7]" UpdateCommand="UPDATE [acorlando_hw7] SET [team_Name] = @team_Name, [Coach] = @Coach, [city] = @city, [number_Of_Players] = @number_Of_Players, [Wins] = @Wins, [Losses] = @Losses WHERE [team_id] = @team_id">
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




    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="team_id" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="team_Name" HeaderText="Team Name" SortExpression="team_Name" />
            <asp:BoundField DataField="Coach" HeaderText="Coach" SortExpression="Coach" />
            <asp:BoundField DataField="city" HeaderText="City" SortExpression="city" />
            <asp:HyperLinkField DataNavigateUrlFields="team_id" DataNavigateUrlFormatString="details.aspx?team_id={0}" Text="Select" />
        </Columns>
    </asp:GridView>




</asp:Content>

