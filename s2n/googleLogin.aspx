<%@ Page Language="C#" AutoEventWireup="true" CodeFile="googleLogin.aspx.cs" Inherits="googleLogin" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <style type="text/css">
        body
        {
            font-family: Arial;
            font-size: 10pt;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Button ID="btnLogin" Text="Login" runat="server" OnClick="Login" />
        <asp:Panel ID="pnlProfile" runat="server" Visible="false">
            <hr />
            <table>
                <tr>
                    <td rowspan="6" valign="top">
                        <asp:Image ID="ProfileImage" runat="server" Width="50" Height="50" />
                    </td>
                </tr>
                <tr>
                    <td>
                        ID:
                        <asp:Label ID="lblId" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        Name:
                        <asp:Label ID="lblName" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        Email:
                        <asp:Label ID="lblEmail" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        Gender:
                        <asp:Label ID="lblGender" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        Type:
                        <asp:Label ID="lblType" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button Text="Clear" runat="server" OnClick="Clear" />
                    </td>
                </tr>
            </table>
        </asp:Panel>
    </div>
    
    <table border="1" cellpadding="10" cellspacing="15" class="auto-style2">
        <tr>
            <td class="auto-style3">
                <h4>Order Quickly </h4>
            </td>
            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
            <td class="auto-style1">
                <h4>User&#39;s Place</h4>
            </td>
        </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                    </tr>
        <tr>
            <td class="auto-style3"><a href="#"><p style="font-size: 25px">Order food&nbsp;<i class="material-icons">add_shopping_cart</i></p></a></td>
            <td></td>
            <td class="auto-style1"><a href="#"><p style="font-size: 25px">Get Receipts&nbsp;<i class="material-icons">receipt</i></p></a></td>
        </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                    </tr>
        <tr>
            <td class="auto-style3"><a href="menu.aspx#oftd"><p style="font-size:25px">Offer of the day</p></a></td>
            <td></td>
            <td class="auto-style1"><a href="#"><p style="font-size: 25px">Order History&nbsp;<i class="material-icons">date_range</i></p></a></td>
        </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                    </tr>
        <tr>
            <td class="auto-style3"><a href="menu.aspx#bNs"><p style="font-size: 25px">Breakfast/Snacks</p></a></td>
            <td></td>
            <td class="auto-style1"><a href="#"><p style="font-size: 25px">Last Transaction details</p></a></td>
        </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                    </tr>
        <tr>
            <td class="auto-style3"><a href="menu.aspx#lNd"><p style="font-size: 25px">Lunch/Dinner</p></a></td>
            <td></td>
            <td class="auto-style1"><a href="UserFeedback.aspx"><p style="font-size: 25px">Register Complain&nbsp;<i class="material-icons">forum</i></p></a></td>
        </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                    </tr>
        <tr>
            <td class="auto-style3"><a href="menu.aspx#cb"><p style="font-size:25px">Combo-Box</p></a></td>
            <td></td>
            <td class="auto-style1"><a href="#"><p style="font-size: 25px">Complain status</p></a></td>
        </tr>
    </table>
        <a href="showProduct.aspx">
          <span style="font-size:60px" class="glyphicon glyphicon-shopping-cart"></span></a>
        <br />
        <a style="font-size:larger" href="showProduct.aspx">Order food</a>
        </form>
</body>
</html>
