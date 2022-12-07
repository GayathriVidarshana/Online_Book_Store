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
        .auto-style10 {
            width: 100%;
        }
        .auto-style11 {
            font-size: xx-large;
            color: #FFFFFF;
        }
        .auto-style12 {
            background-color: #3399FF;
        }
        .auto-style13 {
            background-color: #CCFFFF;
        }
        .auto-style16 {
            width: 347px;
        }
        .auto-style17 {
            margin-left: 0px;
            font-size: medium;
            color: #FFFFFF;
            font-weight: bold;
            font-style: italic;
            background-color: #3399FF;
        }
        .auto-style18 {
            font-size: medium;
            color: #FF0000;
            background-color: #3399FF;
        }
        .auto-style19 {
            background-color: #66FF99;
            font-size: medium;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div align="center">
        <table class="auto-style10">
            <tr>
                <td>
                    <asp:Panel ID="Panel3" runat="server" CssClass="auto-style13" Height="945px">
                        <table class="auto-style10">
                            <tr>
                                <td>
                                    <asp:Panel ID="Panel4" runat="server" CssClass="auto-style12">
                                        <span class="auto-style11"><strong><em>ADD NEW BOOK </em></strong></span>
                                    </asp:Panel>
                                </td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    <table class="auto-style10">
                                        <tr>
                                            <td class="auto-style16">
                                                <asp:Panel ID="Panel1" runat="server" Width="689px">
                                                    <table class="auto-style2">
                                                        <tr>
                                                            <td class="auto-style3"></td>
                                                        </tr>
                                                        <tr>
                                                            <td align="right" class="auto-style3" style="padding-left: 20px;"></td>
                                                            <td></td>
                                                        </tr>
                                                        <tr>
                                                            <td></td>
                                                        </tr>
                                                        <tr>
                                                            <td class="auto-style2" style="padding-left: 20px;">
                                                                <asp:Label ID="Label2" runat="server" Text="ISBN No :"></asp:Label>
                                                            </td>
                                                            <td align="left">
                                                                <asp:TextBox ID="txtISBN" runat="server" Width="304px"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="auto-style2" style="padding-left: 20px;">
                                                                <asp:Label ID="Label4" runat="server" Text="Title :"></asp:Label>
                                                            </td>
                                                            <td align="left">
                                                                <asp:TextBox ID="txtTitle" runat="server" Width="304px"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="auto-style4" style="padding-left: 20px;">
                                                                <asp:Label ID="Label8" runat="server" Text="Auther :"></asp:Label>
                                                            </td>
                                                            <td align="left" class="auto-style5">
                                                                <asp:TextBox ID="txtAuther" runat="server" Width="304px"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="auto-style2" style="padding-left: 20px;">
                                                                <asp:Label ID="Label5" runat="server" Text="Edition :"></asp:Label>
                                                            </td>
                                                            <td align="left">
                                                                <asp:TextBox ID="txtEdition" runat="server" Width="304px"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="auto-style2" style="padding-left: 20px;">
                                                                <asp:Label ID="Label6" runat="server" Text="Publication :"></asp:Label>
                                                            </td>
                                                            <td align="left">
                                                                <asp:TextBox ID="txtPublication" runat="server" Width="100px"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="auto-style2" style="padding-left: 20px;">
                                                                <asp:Label runat="server" Text="Description :"></asp:Label>
                                                            </td>
                                                            <td align="left">
                                                                <asp:TextBox ID="txtDescription" runat="server" Height="23px" Width="100px"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="auto-style2" style="padding-left: 20px;">
                                                                <asp:Label ID="Label9" runat="server" Text="# Copies :"></asp:Label>
                                                            </td>
                                                            <td align="left" class="auto-style1">
                                                                <asp:TextBox ID="txtCopies" runat="server" CssClass="auto-style8" Width="304px"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="auto-style2">
                                                                <asp:Label ID="Label10" runat="server" Text="Price :"></asp:Label>
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
                                                                <strong><em>
                                                                <asp:Button ID="Btn_Save" runat="server" CssClass="auto-style17" Height="49px" OnClick="Btn_Save_Click" Text="Save" Width="104px" />
                                                                </em></strong><%--OnClick="Button1_Click" />--%><%--OnClick="ButtonEdit_Click" />--%><strong>
                                                                <asp:Button ID="Btn_Cancel" runat="server" CssClass="auto-style18" Height="48px" Text="Cancel" Width="94px" />
                                                                </strong>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </asp:Panel>
                                            </td>
                                            <td>
                                                <asp:Panel ID="Panel2" runat="server">
                                                    <div align="center">
                                                        <asp:GridView ID="GridView1" runat="server" CssClass="auto-style9" Height="141px" Width="252px">
                                                        </asp:GridView>
                                                    </div>
                                                </asp:Panel>
                                            </td>
                                           
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style2"><strong><em>
                                    <asp:Button ID="btn_edit" runat="server" CssClass="auto-style19" OnClick="btn_edit_Click1" Text="Go Back" />
                                    </em></strong></td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                    </asp:Panel>
                </td>
            </tr>
            
        </table>
        
    </div>
       
    </form>
</body>
</html>
