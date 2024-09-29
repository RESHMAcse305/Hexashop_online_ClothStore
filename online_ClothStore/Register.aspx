<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="online_ClothStore.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
    <tr>
        <td style="width: 219px">&nbsp;</td>
        <td>&nbsp;</td>
        <td style="width: 381px">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 219px">
            &nbsp;</td>
        <td>
            <asp:Label ID="Label12" runat="server" BackColor="#00CCFF" Font-Bold="True" Font-Size="XX-Large" ForeColor="Black" Text="Registration"></asp:Label>
        </td>
        <td style="width: 381px">
            &nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 219px">&nbsp;</td>
        <td>&nbsp;</td>
        <td style="width: 381px">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 219px">&nbsp;</td>
        <td>
            <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
        </td>
        <td style="width: 381px">
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Name is required*"></asp:RequiredFieldValidator>
        </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 219px">&nbsp;</td>
        <td>&nbsp;</td>
        <td style="width: 381px">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 219px">
            &nbsp;</td>
        <td>
            <asp:Label ID="Label2" runat="server" Text="Age"></asp:Label>
        </td>
        <td style="width: 381px">
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox2" EnableTheming="True" ErrorMessage="between 18 to 60" MaximumValue="60" MinimumValue="18"></asp:RangeValidator>
        </td>
        <td>
            &nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="height: 26px; width: 219px;">&nbsp;</td>
        <td style="height: 26px"></td>
        <td style="height: 26px; width: 381px;"></td>
        <td style="height: 26px">&nbsp;</td>
        <td style="height: 26px"></td>
        <td style="height: 26px"></td>
    </tr>
    <tr>
        <td style="width: 219px">
            &nbsp;</td>
        <td>
            <asp:Label ID="Label3" runat="server" Text="Address"></asp:Label>
        </td>
        <td style="width: 381px">
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Address is required*" ControlToValidate="TextBox3"></asp:RequiredFieldValidator>
        </td>
        <td>
            &nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 219px">&nbsp;</td>
        <td>&nbsp;</td>
        <td style="width: 381px">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 219px; height: 26px;">
            </td>
        <td style="height: 26px">
            <asp:Label ID="Label13" runat="server" Text="Email"></asp:Label>
        </td>
        <td style="width: 381px; height: 26px;">
            <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox9" ErrorMessage="email required*" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </td>
        <td style="height: 26px">
            </td>
        <td style="height: 26px"></td>
        <td style="height: 26px"></td>
    </tr>
    <tr>
        <td style="width: 219px">&nbsp;</td>
        <td>&nbsp;</td>
        <td style="width: 381px">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 219px">
            &nbsp;</td>
        <td>
            <asp:Label ID="Label4" runat="server" Text="Phone"></asp:Label>
        </td>
        <td style="width: 381px">
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox4" ErrorMessage=" 10 digits*" ValidationExpression="^([987]{1})(\d{1})(\d{8})"></asp:RegularExpressionValidator>
        </td>
        <td>
            &nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 219px">&nbsp;</td>
        <td>&nbsp;</td>
        <td style="width: 381px">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 219px">
            &nbsp;</td>
        <td>
            <asp:Label ID="Label5" runat="server" Text="PIN"></asp:Label>
        </td>
        <td style="width: 381px">
            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox5" ErrorMessage="must be 6 digit*" ValidationExpression="([0-9]{6}|[0-9]{3}\s[0-9]{3})"></asp:RegularExpressionValidator>
        </td>
        <td>
            &nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 219px">&nbsp;</td>
        <td>&nbsp;</td>
        <td style="width: 381px">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 219px">
            &nbsp;</td>
        <td>
            <asp:Label ID="Label6" runat="server" Text="State"></asp:Label>
        </td>
        <td style="width: 381px">
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem Value="1">Kerala</asp:ListItem>
                <asp:ListItem Value="2">Karnataka</asp:ListItem>
                <asp:ListItem></asp:ListItem>
            </asp:DropDownList>
        </td>
        <td>
            &nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 219px">&nbsp;</td>
        <td>&nbsp;</td>
        <td style="width: 381px">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 219px">
            &nbsp;</td>
        <td>
            <asp:Label ID="Label7" runat="server" Text="District"></asp:Label>
        </td>
        <td style="width: 381px">
            <asp:DropDownList ID="DropDownList2" runat="server">
                <asp:ListItem Value="1">Thiruvananthapuram</asp:ListItem>
                <asp:ListItem Value="2"> Kollam</asp:ListItem>
                <asp:ListItem Value="3">Pathanamthitta</asp:ListItem>
                <asp:ListItem Value="4">Alappuzha</asp:ListItem>
                <asp:ListItem Value="4">Kottayam</asp:ListItem>
                <asp:ListItem Value="5">Idukki</asp:ListItem>
                <asp:ListItem Value="6">Ernakulam</asp:ListItem>
                <asp:ListItem Value="7">Thrissur</asp:ListItem>
                <asp:ListItem Value="8">Palakkad</asp:ListItem>
                <asp:ListItem Value="9">Malappuram</asp:ListItem>
                <asp:ListItem Value="10">Kozhikode</asp:ListItem>
                <asp:ListItem Value="11">Wayanad</asp:ListItem>
                <asp:ListItem Value="12">Kannur</asp:ListItem>
                <asp:ListItem Value="13">Kasaragod</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td>
            &nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 219px">&nbsp;</td>
        <td>&nbsp;</td>
        <td style="width: 381px">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 219px">
            &nbsp;</td>
        <td>
            <asp:Label ID="Label9" runat="server" Text="Username"></asp:Label>
        </td>
        <td style="width: 381px">
            <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox6" ErrorMessage="Username is required*"></asp:RequiredFieldValidator>
        </td>
        <td>
            &nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 219px">&nbsp;</td>
        <td>&nbsp;</td>
        <td style="width: 381px">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 219px">
            &nbsp;</td>
        <td>
            <asp:Label ID="Label10" runat="server" Text="Password"></asp:Label>
        </td>
        <td style="width: 381px">
            <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
        </td>
        <td>
            &nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 219px">&nbsp;</td>
        <td>&nbsp;</td>
        <td style="width: 381px">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 219px">
            &nbsp;</td>
        <td>
            <asp:Label ID="Label11" runat="server" Text="Confirm password"></asp:Label>
        </td>
        <td style="width: 381px">
            <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox7" ControlToValidate="TextBox8" ErrorMessage="password is mandatory*"></asp:CompareValidator>
        </td>
        <td>
            &nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 219px">&nbsp;</td>
        <td>&nbsp;</td>
        <td style="width: 381px">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 219px">&nbsp;</td>
        <td>&nbsp;</td>
        <td style="width: 381px">
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Register Now" />
        </td>
        <td>
            &nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 219px">&nbsp;</td>
        <td>&nbsp;</td>
        <td style="width: 381px">
            <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
        </td>
        <td>
            &nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>
