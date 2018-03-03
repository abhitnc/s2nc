<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default9Stats.aspx.cs" Inherits="Default9Stats" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
    <title>L</title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Label ID="Label1" runat="server" Text="Date"></asp:Label>
        <asp:TextBox ID="TextBox1" TextMode="Date" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label2" runat="server" Text="Name"></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label3" runat="server" Text="Trans"></asp:Label>
        <asp:TextBox ID="TextBox3" runat="server" TextMode="Number"></asp:TextBox>
        <br />
        <asp:Button ID="k" runat="server" OnClick="k_Click" Text="Submit" />
    </form>
</body>
</html>

