<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdminHomepage.aspx.cs" Inherits="online_ClothStore.AdminHomepage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
    <tr>
        <td>&nbsp;</td>
        <td style="width: 303px">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td style="width: 303px">&nbsp;</td>
        <td>
            <asp:Label ID="Label1" runat="server" BorderColor="Black" BorderStyle="Outset" Font-Bold="True" Font-Italic="False" Font-Size="Large" Font-Strikeout="False" ForeColor="#006600" Height="43px" Text="Admin Home Page"  margin-left="4px"    Width="491px"></asp:Label>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="height: 26px"></td>
        <td style="width: 303px; height: 26px;">
            &nbsp;</td>
        <td style="height: 26px">
            <asp:Panel ID="Panel1" runat="server" Height="127px" Width="830px">
                <table class="w-100">
                    <tr>
                        <td style="width: 238px">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 238px">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 238px">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 238px">
                            <asp:LinkButton ID="LinkButton1" runat="server" BorderColor="#006600" BorderStyle="Double" Font-Bold="True" Font-Size="X-Large" ForeColor="#FF3399" OnClick="LinkButton1_Click" PostBackUrl="~/AddCategory.aspx">Add Category</asp:LinkButton>
                        </td>
                        <td>
                            <asp:LinkButton ID="LinkButton2" runat="server" BorderColor="#006600" BorderStyle="Double" Font-Bold="True" Font-Size="X-Large" ForeColor="#FF3399" PostBackUrl="~/AddProduct.aspx">Add Product</asp:LinkButton>
                        </td>
                    </tr>
                </table>
            </asp:Panel>
        </td>
        <td style="height: 26px">&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td style="width: 303px">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="height: 26px"></td>
        <td style="width: 303px; height: 26px;"></td>
        <td style="height: 26px"></td>
        <td style="height: 26px"></td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td style="width: 303px">
            &nbsp;</td>
        <td>
            <asp:LinkButton ID="LinkButton3" runat="server" PostBackUrl="~/ViewUserfeedback.aspx">View User feedback</asp:LinkButton>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td style="width: 303px">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td style="width: 303px">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td style="width: 303px">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td style="width: 303px">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td style="width: 303px">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td style="width: 303px">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td style="width: 303px">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>
