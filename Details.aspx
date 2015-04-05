<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Details.aspx.vb" Inherits="Details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="stylesheet" type="text/css" href="StyleSheet.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:msci3300_g1ConnectionString %>"  SelectCommand="SELECT * FROM [acorlando_hw7] WHERE ([team_id] = @team_id)" >
        
        <SelectParameters>
            <asp:QueryStringParameter Name="team_id" QueryStringField="team_id" Type="Int32" />
        </SelectParameters>
        
    </asp:SqlDataSource>




<asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="team_id" DataSourceID="SqlDataSource1" CssClass="cssdetailsview" Height="50px" Width="520px">
    <Fields>
        <asp:BoundField DataField="team_Name" HeaderText="Team Name" SortExpression="team_Name" />
        <asp:BoundField DataField="Coach" HeaderText="Coach" SortExpression="Coach" />
        <asp:BoundField DataField="city" HeaderText="City" SortExpression="city" />
        <asp:BoundField DataField="number_Of_Players" HeaderText="Number of Players" SortExpression="number_Of_Players" />
        <asp:BoundField DataField="Wins" HeaderText="Wins" SortExpression="Wins" />
        <asp:BoundField DataField="Losses" HeaderText="Losses" SortExpression="Losses" />
    </Fields>
</asp:DetailsView>


</asp:Content>

