<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DefaultPage.aspx.cs" Inherits="Online_Book_Store.View.DefaultPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 384px;
        }
        .auto-style5 {
            text-align: center;
            background-color: #3399FF;
        }
        .auto-style7 {
            background-color: #3399FF;
        }
        .auto-style10 {
            text-align: center;
            margin-left: 0px;
            background-color: #3399FF;
        }
        .auto-style11 {
            width: 513px;
        }
        .auto-style12 {
            background-color: #CCFFFF;
        }
        .auto-style14 {
            font-size: xx-large;
            font-weight: bold;
            font-style: italic;
            color: #FFFFFF;
            background-color: #3399FF;
        }
        .auto-style15 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style15">

             <asp:Panel ID="Panel9" runat="server" CssClass="auto-style12" Height="1145px">
                        
            <table class="auto-style1">
               
                <tr>
                    <td>
                        <asp:Panel ID="Panel2" runat="server" style="font-size: xx-large; font-weight: 700; color: #FFFF00; background-color: #00CCFF">
                            <asp:Label ID="Label1" runat="server" Text="CLOUD BOOK STORE" style="text-align: center; color: #FFFFFF;"></asp:Label>
                        </asp:Panel>
                    </td>
                </tr>
                <tr>
                    <td>
                        
                        <table class="auto-style1">
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
                            <tr>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                        
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Panel ID="Panel1" runat="server">
                            <table class="auto-style1">
                                <tr>
                                    <td class="auto-style2">
                                        <asp:Panel ID="Panel3" runat="server" CssClass="auto-style5" Width="543px">
                                            <asp:Image ID="Image1" runat="server" Height="198px" ImageAlign="Middle" ImageUrl="~/Image/2232688.png" Width="226px" />
                                        </asp:Panel>
                                    </td>
                                    <td class="auto-style11">
                                        <asp:Panel ID="Panel4" runat="server" CssClass="auto-style8" Width="512px">
                                            <asp:Image ID="Image2" runat="server" Height="195px" ImageAlign="Middle" ImageUrl="~/Image/1995562.png" Width="226px" />
                                        </asp:Panel>
                                    </td>
                                    <td>
                                        <asp:Panel ID="Panel5" runat="server" CssClass="auto-style10" Height="185px">
                                            <asp:Image ID="Image3" runat="server" Height="197px" ImageUrl="~/Image/164581.png" Width="206px" />
                                        </asp:Panel>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style2">
                                        <asp:Panel ID="Panel6" runat="server">
                                            <strong>
                                            <em>
                                            <asp:Button ID="btn_book" runat="server" CssClass="auto-style14" Height="75px" OnClick="btn_book_Click" Text="BOOK MANAGEMENT" Width="542px" />
                                            </em>
                                            </strong>
                                        </asp:Panel>
                                    </td>
                                    <td class="auto-style11">
                                        <asp:Panel ID="Panel7" runat="server" CssClass="auto-style7" Height="66px" Width="542px">
                                            <strong><em>
                                            <asp:Button ID="Btn_edit" runat="server" CssClass="auto-style14" Height="69px" OnClick="Btn_edit_Click" Text="EDIT BOOK DETAILS" Width="542px" />
                                            </em></strong>
                                        </asp:Panel>
                                    </td>
                                    <td>
                                        <asp:Panel ID="Panel8" runat="server" CssClass="auto-style7" Height="71px" Width="542px">
                                        </asp:Panel>
                                    </td>
                                </tr>
                            </table>
                        </asp:Panel>
                    </td>
                </tr>
               
            </table>
 </asp:Panel>

        </div>
       
    </form>
</body>
</html>
