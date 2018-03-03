<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default4.aspx.cs" Inherits="Default4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" Text="Search Name:"></asp:Label>
&nbsp;<asp:TextBox ID="txtSearch" runat="server" OnTextChanged="Search" AutoPostBack="true"></asp:TextBox>
<hr />
       <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" AllowPaging="true" OnPageIndexChanging = "OnPaging">
    <Columns>
        <asp:BoundField DataField="Email" HeaderText="Email" ItemStyle-Width="150" />
        <asp:BoundField DataField="Name" HeaderText="Name" ItemStyle-Width="150" />
    </Columns>
</asp:GridView>
 </form>
</body>
</html>