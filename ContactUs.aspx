<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="ContactUs.aspx.vb" Inherits="ContactUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table>
        <tr>
            <td>
                <asp:Label ID="Lbl_email" runat="server" Text="Your Email Address:"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="tb_email" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lbl_message" runat="server" Text="Your Message:"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="tb_message" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="btn_send" runat="server" BackColor="#00CC00" ForeColor="White" Text="Send Message" />
            </td>
            <td>
                <asp:Label ID="lbl_confirmSent" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>

