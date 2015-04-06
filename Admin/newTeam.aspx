<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="newTeam.aspx.vb" Inherits="newTeam" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="stylesheet" type="text/css" href="StyleSheet.css" />
<style type="text/css">
    .cssgridview {
        margin-left: 256px;
    }
</style>
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


    <br />
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="team_id" DataSourceID="SqlDataSource1" CssClass="cssgridview" DefaultMode="Insert" Width="500px">
        <EditItemTemplate>
           
        </EditItemTemplate>
        <InsertItemTemplate>
            <table>
                    <tr>
                        <td style="text-align:right;background-color:#74AFAD">
                            * Team Name:
                        </td >
                        <td style="text-align:left;">
                             <asp:TextBox ID="team_NameTextBox" runat="server" Text='<%# Bind("team_Name") %>' />
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="team_NameTextBox" ErrorMessage="Please Enter a Team Name"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align:right;background-color:#74AFAD">
                            Coach:
                        </td>
                        <td style="text-align:left;">
                            <asp:TextBox ID="CoachTextBox" runat="server" Text='<%# Bind("Coach") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align:right;background-color:#74AFAD">
                            City:
                        </td>
                        <td style="text-align:left;">
                             <asp:TextBox ID="cityTextBox" runat="server" Text='<%# Bind("city") %>' />
                        </td>
                    </tr>
                     <tr>
                        <td style="text-align:right;background-color:#74AFAD">
                             Number of Players:
                        </td>
                        <td style="text-align:left;">
                             <asp:TextBox ID="number_Of_PlayersTextBox" runat="server" Text='<%# Bind("number_Of_Players") %>' />
                        </td>
                    </tr>
                     <tr>
                        <td style="text-align:right;background-color:#74AFAD">
                            Wins:
                        </td>
                        <td style="text-align:left;">
                             <asp:TextBox ID="WinsTextBox" runat="server" Text='<%# Bind("Wins") %>' />
                        </td>
                    </tr>
                     <tr>
                        <td style="text-align:right;background-color:#74AFAD">
                            Losses:
                        </td>
                        <td style="text-align:left;">
                             <asp:TextBox ID="LossesTextBox" runat="server" Text='<%# Bind("Losses") %>' />
                        </td>
                    </tr>
                     <tr >
                        <td style="text-align:right;">
                            <asp:Button ID="Btn_save" runat="server" CausesValidation="True" CommandName="Insert" Text="Save"  backColor="Green" ForeColor="White" />
                        </td>
                         <td style="text-align:left;">
                             <asp:Button ID="Btn_Cancel" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" BackColor="Green" ForeColor="White" />
                        </td>
                    </tr>
                </table>
        </InsertItemTemplate>
        <ItemTemplate>
            
        </ItemTemplate>
    </asp:FormView>


</asp:Content>

