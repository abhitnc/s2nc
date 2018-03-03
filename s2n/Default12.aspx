<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default12.aspx.cs" Inherits="Default12" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 31px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table cellspacing="10" class="auto-style1">
            <tr>
                <td>ID:-</td>
                <td>
       <asp:Label ID="id" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Name:-</td>
                <td class="auto-style2">
    <asp:Label ID="name" runat="server" Text="Label"></asp:Label></td>
            </tr>
            <tr>
                <td>Date of Birth:-</td>
                <td>
    <asp:Label ID="dob" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>Mobile Number:-</td>
                <td>
                    <asp:Label ID="email" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>Email Id:-</td>
                <td>
    <asp:Label ID="Subject" runat="server" Text="Label"></asp:Label></td>
            </tr>
        </table>
    </form>
</body>
</html>