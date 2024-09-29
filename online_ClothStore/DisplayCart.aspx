<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="DisplayCart.aspx.cs" Inherits="online_ClothStore.DisplayCart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table   class="w-100">
        <tr>
            <td  border="1" style ="width: 411px"  >&nbsp;</td>
            <td style="width: 244px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 411px">&nbsp;</td>
            <td style="width: 244px">
                <table style="width: 224%; height: 278px;">
                    <tr>
                        <td style="height: 38px"></td>
                        <td style="height: 38px">
                           
                            <asp:Label ID="Label5" runat="server" BackColor="White" Font-Bold="True"  text-align=" center" Font-Size="X-Large" ForeColor="#FF9933" Text="Selected Items"   ></asp:Label>
                                
                        </td>
                        <td style="height: 38px">
                <asp:Label ID="Label4" runat="server" Text="Label" Font-Bold="True"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                <asp:GridView ID="GridView1" runat="server" DataKeyNames="Cart_Id" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting1" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" CellPadding="4" ForeColor="#333333"  AlternatingRowStyle-BackColor="Wheat" ShowFooter="True">
                    <Columns>
                        <asp:CommandField HeaderText="Delete" ShowDeleteButton="True" />
                        <asp:CommandField HeaderText="Edit" ShowEditButton="True" />
                        
                    </Columns>
                </asp:GridView>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="#669900" Text="Confirm" OnClick="Button1_Click" />
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </td>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 411px">&nbsp;</td>
            <td style="width: 244px">
                &nbsp;</td>
            <td>
                <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/viewProduct.aspx">Add product</asp:LinkButton>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 411px">&nbsp;</td>
            <td style="width: 244px">
                &nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 411px; height: 26px;"></td>
            <td style="width: 244px; height: 26px;">
            </td>
            <td style="height: 26px"></td>
            <td style="height: 26px"></td>
            <td style="height: 26px"></td>
        </tr>
        <tr>
            <td style="width: 411px; height: 26px;"></td>
            <td style="width: 244px; height: 26px;"></td>
            <td style="height: 26px"></td>
            <td style="height: 26px"></td>
            <td style="height: 26px"></td>
        </tr>
        <tr>
            <td style="width: 411px">&nbsp;</td>
            <td style="width: 244px">
                &nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
