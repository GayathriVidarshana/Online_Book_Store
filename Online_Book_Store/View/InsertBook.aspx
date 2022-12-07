<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InsertBook.aspx.cs" Inherits="Online_Book_Store.View.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: left;
        }
        .auto-style2 {
            text-align: right;
        }
        .auto-style3 {
            text-align: center;
        }
        .auto-style4 {
            text-align: right;
            height: 26px;
        }
        .auto-style5 {
            height: 26px;
        }
        .auto-style6 {
            text-align: right;
            height: 23px;
        }
        .auto-style7 {
            height: 23px;
            text-align: left;
        }
        .auto-style8 {
            margin-left: 0px;
        }
        .auto-style9 {
            margin-top: 10px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div align="center">
        <table class="auto-style2" >
            <tr>
                <td class="auto-style3"></td>
            </tr>

            <tr>
                <td align="right" style="padding-left: 20px;" class="auto-style3"></td>
                <td></td>
            </tr>
            <tr>
                <td></td>
            </tr>
            <tr>
                <td style="padding-left: 20px;" class="auto-style2">
                    <asp:Label ID="Label2" runat="server" Text="ISBN No :"></asp:Label>
                </td>
                <td align="left">
                    <asp:TextBox ID="txtISBN" runat="server" Width="304px" required></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="padding-left: 20px;" class="auto-style2">
                    <asp:Label ID="Label4" runat="server" Text="Title :"></asp:Label>
                </td>
                <td align="left">
                    <asp:TextBox ID="txtTitle" runat="server" Width="304px" required></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="padding-left: 20px;" class="auto-style4">
                    <asp:Label ID="Label8" runat="server" Text="Auther :"></asp:Label>
                </td>
                <td align="left" class="auto-style5">
                    <asp:TextBox ID="txtAuther" runat="server" Width="304px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="padding-left: 20px;" class="auto-style2">
                    <asp:Label ID="Label5" runat="server" Text="Edition :"></asp:Label>
                </td>
                <td align="left">
                    <asp:TextBox ID="txtEdition" runat="server" Width="304px" required></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="padding-left: 20px;" class="auto-style2">
                    <asp:Label ID="Label6" runat="server" Text="Publication :"></asp:Label>
                </td>
                <td align="left">
                    <asp:TextBox ID="txtPublication" runat="server" Width="100px" Text="1500"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="padding-left: 20px;" class="auto-style2">
                    <asp:Label runat="server" Text="Description :"></asp:Label>
                </td>
                <td align="left">
                    <asp:TextBox ID="txtDescription" runat="server" Width="100px" Text="55"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="padding-left: 20px;" class="auto-style2">

                    <asp:Label runat="server" Text="# Copies :" ID="Label9"></asp:Label>
                </td>
                <td align="left" class="auto-style1">
                    <asp:TextBox ID="txtCopies" runat="server" Width="304px" CssClass="auto-style8"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label runat="server" Text="Price :" ID="Label10"></asp:Label>
                </td>
                <td class="auto-style1">
                    <asp:TextBox ID="txtPrice" runat="server" Width="304px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lbl_error_01" runat="server"></asp:Label>
                </td>
                <td>
                    <asp:Button ID="Btn_Save" runat="server" CssClass="auto-style8" Text="Save" Width="63px" OnClick="Btn_Save_Click" /> <%--OnClick="Button1_Click" />--%>
                    <asp:Button ID="Btn_Update" runat="server" CssClass="auto-style8" Text="Update" Width="63px" /> <%--OnClick="ButtonEdit_Click" />--%>
                    <asp:Button ID="Btn_Cancel" runat="server" Text="Cancel" />
                </td>
            </tr>
        </table>
    </div>
        <div align="center">
            <asp:GridView ID="GridView1" runat="server" CssClass="auto-style9" Height="141px" Width="252px"></asp:GridView>

        </div>
    </form>
</body>
</html>
