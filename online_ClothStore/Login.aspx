<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="online_ClothStore.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="Container" style="width:100%">
    <tr>
        <td style="width: 390px">&nbsp;</td>
        <td style="width: 390px">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 390px">
            &nbsp;</td>
        <td style="width: 390px">
            <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="XX-Large" ForeColor="#0066FF" Text="Login" align="center"></asp:Label>
        </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 390px">&nbsp;</td>
        <td style="width: 390px">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 390px">
            &nbsp;</td>
        <td style="width: 390px">
            <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 390px">&nbsp;</td>
        <td style="width: 390px">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="height: 26px; width: 390px;">&nbsp;</td>
        <td style="height: 26px; width: 390px;"></td>
        <td style="height: 26px"></td>
        <td style="height: 26px"></td>
        <td style="height: 26px"></td>
    </tr>
    <tr>
        <td style="width: 390px">
            &nbsp;</td>
        <td style="width: 390px">
            <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 390px">&nbsp;</td>
        <td style="width: 390px">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 390px">&nbsp;</td>
        <td style="width: 390px">&nbsp;</td>
        <td>
            <asp:LinkButton ID="LinkButton1" runat="server">Forgot Password</asp:LinkButton>
        </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 390px">&nbsp;</td>
        <td style="width: 390px">&nbsp;</td>
        <td>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Login" />
        </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 390px">&nbsp;</td>
        <td style="width: 390px">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 390px">&nbsp;</td>
        <td style="width: 390px">&nbsp;</td>
        <td>
            <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
        </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 390px">&nbsp;</td>
        <td style="width: 390px">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>
