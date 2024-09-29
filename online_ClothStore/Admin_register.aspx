<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Admin_register.aspx.cs" Inherits="online_ClothStore.Admin_register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
        <tr>
            <td style="width: 264px">&nbsp;</td>
            <td>&nbsp;</td>
            <td style="width: 530px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 264px">&nbsp;</td>
            <td>&nbsp;</td>
            <td style="width: 530px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 26px; width: 264px;">
                &nbsp;</td>
            <td style="height: 26px">
                <asp:Label ID="Label9" runat="server" BackColor="#009999" Font-Bold="True" Font-Size="XX-Large" Text="Admin Registration"></asp:Label>
            </td>
            <td style="height: 26px; width: 530px;"></td>
            <td style="height: 26px"></td>
            <td style="height: 26px"></td>
        </tr>
        <tr>
            <td style="width: 264px">&nbsp;</td>
            <td>&nbsp;</td>
            <td style="width: 530px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 264px">&nbsp;</td>
            <td>&nbsp;</td>
            <td style="width: 530px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 264px">&nbsp;</td>
            <td>&nbsp;</td>
            <td style="width: 530px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 264px">
                &nbsp;</td>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
            </td>
            <td style="width: 530px">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="username is mandatory*"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 264px">&nbsp;</td>
            <td>&nbsp;</td>
            <td style="width: 530px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 264px">
                &nbsp;</td>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Address"></asp:Label>
            </td>
            <td style="width: 530px">
                <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="address required*"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 264px">&nbsp;</td>
            <td>&nbsp;</td>
            <td style="width: 530px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 264px">&nbsp;</td>
            <td>&nbsp;</td>
            <td style="width: 530px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 264px">
                &nbsp;</td>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Email"></asp:Label>
            </td>
            <td style="width: 530px">
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox3" EnableTheming="True" ErrorMessage="email is required*" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 264px">&nbsp;</td>
            <td>&nbsp;</td>
            <td style="width: 530px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 264px">&nbsp;</td>
            <td>&nbsp;</td>
            <td style="width: 530px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 264px">
                &nbsp;</td>
            <td>
                <asp:Label ID="Label4" runat="server" Text="Phone"></asp:Label>
            </td>
            <td style="width: 530px">
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox4" ErrorMessage="required*" ValidationExpression="^([987]{1})(\d{1})(\d{8})"></asp:RegularExpressionValidator>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 264px">&nbsp;</td>
            <td>&nbsp;</td>
            <td style="width: 530px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 26px; width: 264px;">&nbsp;</td>
            <td style="height: 26px"></td>
            <td style="height: 26px; width: 530px;"></td>
            <td style="height: 26px"></td>
            <td style="height: 26px"></td>
        </tr>
        <tr>
            <td style="width: 264px">
                &nbsp;</td>
            <td>
                <asp:Label ID="Label5" runat="server" Text="Username"></asp:Label>
            </td>
            <td style="width: 530px">
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox5" ErrorMessage="username is required*"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 264px">&nbsp;</td>
            <td>&nbsp;</td>
            <td style="width: 530px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 264px">&nbsp;</td>
            <td>&nbsp;</td>
            <td style="width: 530px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 264px">
                &nbsp;</td>
            <td>
                <asp:Label ID="Label6" runat="server" Text="Password"></asp:Label>
            </td>
            <td style="width: 530px">
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 264px">&nbsp;</td>
            <td>&nbsp;</td>
            <td style="width: 530px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 264px">
                &nbsp;</td>
            <td>
                <asp:Label ID="Label8" runat="server" Text="Confirm password"></asp:Label>
            </td>
            <td style="width: 530px">
                <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox6" ControlToValidate="TextBox7" ErrorMessage="password should match*"></asp:CompareValidator>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 264px">&nbsp;</td>
            <td>&nbsp;</td>
            <td style="width: 530px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 264px">&nbsp;</td>
            <td>&nbsp;</td>
            <td style="width: 530px">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Login" />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 264px">&nbsp;</td>
            <td>&nbsp;</td>
            <td style="width: 530px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 264px">&nbsp;</td>
            <td>&nbsp;</td>
            <td style="width: 530px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 264px">&nbsp;</td>
            <td>&nbsp;</td>
            <td style="width: 530px">
                <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 264px">&nbsp;</td>
            <td>&nbsp;</td>
            <td style="width: 530px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
