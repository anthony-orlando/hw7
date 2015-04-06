<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="search.aspx.vb" Inherits="search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <link rel="stylesheet" type="text/css" href="StyleSheet.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="lbl_search" runat="server" Text="Label">Search for team by name</asp:Label>
    <asp:TextBox ID="tb_search" runat="server"></asp:TextBox>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:msci3300_g1ConnectionString %>" SelectCommand="SELECT * FROM [acorlando_hw7] WHERE ([team_Name] = @team_Name)">
        <SelectParameters>
            <asp:ControlParameter ControlID="tb_search" DefaultValue="team_Name" Name="team_Name" PropertyName="Text" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="team_id" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="team_Name" HeaderText="Team Name" SortExpression="team_Name" />
            <asp:BoundField DataField="Coach" HeaderText="Coach" SortExpression="Coach" />
            <asp:BoundField DataField="city" HeaderText="City" SortExpression="city" />
            <asp:BoundField DataField="number_Of_Players" HeaderText="Number of Players" SortExpression="number_Of_Players" />
            <asp:BoundField DataField="Wins" HeaderText="Wins" SortExpression="Wins" />
            <asp:BoundField DataField="Losses" HeaderText="Losses" SortExpression="Losses" />
        </Columns>
    </asp:GridView>
</asp:Content>

