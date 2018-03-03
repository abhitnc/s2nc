<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default8.aspx.cs" Inherits="Default8" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        body
        {
            font-family: Arial;
            font-size: 10pt;
        }
        .Grid
        {
            border: 1px solid #ccc;
            border-collapse: collapse;
        }
        .Grid th
        {
            background-color: #F7F7F7;
            color: #333;
            font-weight: bold;
            width: 120px;
        }
        .Grid th, .Grid td
        {
            padding: 5px;
            border: 1px solid #ccc;
        }
        label
        {
            cursor: pointer;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <br />
        <asp:DropDownList Font-Size="Large" ID="rblCountries" runat="server" AutoPostBack="true" OnSelectedIndexChanged="Country_Selected">
            <asp:ListItem>--Select--</asp:ListItem>
            <asp:ListItem>India</asp:ListItem>
            <asp:ListItem>Nepal</asp:ListItem>
            <asp:ListItem>Aus</asp:ListItem>
        </asp:DropDownList>
        <br />
    <hr />
    <asp:GridView ID="GridView1" runat="server" CssClass="Grid" AutoGenerateColumns="false"
        ShowHeaderWhenEmpty="true">
        <Columns>
            <asp:BoundField DataField="CustomerId" HeaderText="Customer Id" />
            <asp:BoundField DataField="Name" HeaderText="Name" />
            <asp:BoundField DataField="Country" HeaderText="Country" />
        </Columns>
        <EmptyDataTemplate>
            <div align="center">No records found.</div>
        </EmptyDataTemplate>
    </asp:GridView>
    </form>
</body>
</html>
