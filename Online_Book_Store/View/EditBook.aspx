<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditBook.aspx.cs" Inherits="Online_Book_Store.View.EditBook" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style6 {
            width: 526px;
        }
        .auto-style8 {
            height: 33px;
        }
        .auto-style9 {
            text-align: center;
            font-size: xx-large;
            color: #FFFFFF;
        }
        .auto-style10 {
            background-color: #3399FF;
        }
        .auto-style11 {
            background-color: #CCFFFF;
        }
        .auto-style13 {
            width: 303px;
        }
        .auto-style14 {
            width: 295px;
        }
        .auto-style15 {
            width: 526px;
            height: 33px;
        }
        .auto-style16 {
            font-size: medium;
            font-weight: bold;
            font-style: italic;
            color: #00FF00;
            background-color: #3399FF;
        }
        .auto-style17 {
            font-size: medium;
            font-weight: bold;
            font-style: italic;
            color: #FF0000;
            background-color: #3399FF;
        }
        .auto-style18 {
            font-size: medium;
            font-weight: bold;
            font-style: italic;
            color: #CC0000;
            background-color: #3399FF;
        }
        .auto-style19 {
            width: 100%;
            height: 1123px;
        }
        .auto-style20 {
            width: 102%;
            height: 1043px;
        }
        .auto-style21 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style20">
                <tr>
                    <td>
                        <table class="auto-style19">
                            <tr>
                                <td>
                                    <asp:Panel ID="Panel4" runat="server" CssClass="auto-style11">
                                        <table class="auto-style1">
                                            <tr>
                                                <td class="auto-style21">
                                                    <asp:Panel ID="Panel3" runat="server" CssClass="auto-style10">
                                                        <div class="auto-style9">
                                                            <strong><em>EDIT BOOK DETAILS</em></strong></div>
                                                    </asp:Panel>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>&nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:Panel ID="Panel1" runat="server">
                                                        <table class="auto-style1">
                                                            <tr>
                                                                <td class="auto-style6">
                                                                    <table class="auto-style1">
                                                                        <tr>
                                                                            <td class="auto-style14">ISBN No :</td>
                                                                            <td>
                                                                                <asp:TextBox ID="txtISBN" runat="server"></asp:TextBox>
                                                                            </td>
                                                                            <td class="auto-style14">
                                                                                <table class="auto-style1">
                                                                                    <tr>
                                                                  
                                                                                        <td>
                                                                                            <asp:Button ID="btn_search" runat="server" OnClick="btn_search_Click" Text="Search" />
                                                                                        </td>
                                                                                    </tr>
                                                                                </table>
                                                                            </td>
                                                                            <td>&nbsp;</td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td class="auto-style14">
                                                                                <asp:Label runat="server" Text="TITLE"></asp:Label>
                                                                            </td>
                                                                            <td class="auto-style13">
                                                                                <asp:TextBox ID="txtTitle" runat="server"></asp:TextBox>
                                                                            </td>
                                                                            <td class="auto-style14">&nbsp;</td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td class="auto-style14">
                                                                                <asp:Label ID="Label3" runat="server" Text="AUTHOR"></asp:Label>
                                                                            </td>
                                                                            <td class="auto-style13">
                                                                                <asp:TextBox ID="txtAuther" runat="server"></asp:TextBox>
                                                                            </td>
                                                                            <td class="auto-style14">&nbsp;</td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td class="auto-style14">
                                                                                <asp:Label ID="Label4" runat="server" Text="EDITION"></asp:Label>
                                                                            </td>
                                                                            <td class="auto-style13">
                                                                                <asp:TextBox ID="txtEdition" runat="server"></asp:TextBox>
                                                                            </td>
                                                                            <td class="auto-style14">&nbsp;</td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td class="auto-style14">
                                                                                <asp:Label ID="Label5" runat="server" Text="PUBLICATION"></asp:Label>
                                                                            </td>
                                                                            <td class="auto-style13">
                                                                                <asp:TextBox ID="txtPublication" runat="server"></asp:TextBox>
                                                                            </td>
                                                                            <td class="auto-style14">&nbsp;</td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td class="auto-style14">
                                                                                <asp:Label ID="Label6" runat="server" Text="DESCRIPTION"></asp:Label>
                                                                            </td>
                                                                            <td class="auto-style13">
                                                                                <asp:TextBox ID="txtDescription" runat="server"></asp:TextBox>
                                                                            </td>
                                                                            <td class="auto-style14">&nbsp;</td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td class="auto-style14">
                                                                                <asp:Label ID="Label7" runat="server" Text="NO OF COPIES"></asp:Label>
                                                                            </td>
                                                                            <td class="auto-style13">
                                                                                <asp:TextBox ID="txtCopies" runat="server"></asp:TextBox>
                                                                            </td>
                                                                            <td class="auto-style14">&nbsp;</td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td class="auto-style14">
                                                                                <asp:Label ID="Label8" runat="server" Text="PRICE"></asp:Label>
                                                                            </td>
                                                                            <td class="auto-style13">
                                                                                <asp:TextBox ID="txtPrice" runat="server"></asp:TextBox>
                                                                            </td>
                                                                            <td class="auto-style14">&nbsp;</td>
                                                                        </tr>
                                                                    </table>
                                                                </td>
                                                                <td>
                                                                    <asp:Panel ID="Panel2" runat="server">
                                                                        <asp:GridView ID="GridView_book" runat="server" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4">
                                                                            <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                                                                            <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                                                                            <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                                                                            <RowStyle BackColor="White" ForeColor="#003399" />
                                                                            <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                                                                            <SortedAscendingCellStyle BackColor="#EDF6F6" />
                                                                            <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                                                                            <SortedDescendingCellStyle BackColor="#D6DFDF" />
                                                                            <SortedDescendingHeaderStyle BackColor="#002876" />
                                                                        </asp:GridView>
                                                                    </asp:Panel>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="auto-style15"></td>
                                                                <td class="auto-style8">
                                                                    <strong><em>
                                                                    <asp:Button ID="btn_update" runat="server" CssClass="auto-style16" Height="53px" OnClick="btn_update_Click" Text="Update" Width="98px" />
                                                                    <asp:Button ID="btn_delete" runat="server" CssClass="auto-style17" Height="53px" OnClick="btn_delete_Click" Text="Delete" Width="98px" />
                                                                    <asp:Button ID="btn_clear" runat="server" CssClass="auto-style18" Height="53px" OnClick="btn_clear_Click" Text="Clear" Width="98px" />
                                                                    </em></strong>
                                                                    <asp:Label ID="lbl_msg_01" runat="server"></asp:Label>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="auto-style15">&nbsp;</td>
                                                                <td class="auto-style8">&nbsp;</td>
                                                            </tr>
                                                        </table>
                                                    </asp:Panel>
                                                </td>
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
