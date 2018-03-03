<%@ Page Language="C#" EnableEventValidation="false" AutoEventWireup="true" CodeFile="Default10PDF.aspx.cs" Inherits="Default10PDF" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <img src = "http://www.aspsnippets.com/images/Blue/Logo.png" /><br />
     </div>
     <div style = "font-family:Arial">This is a test page</div>
     <div>
     <table border = "1">
     <tr><td>Name</td><td>Age</td></tr>
     <tr><td>John</td><td>11</td></tr>
     <tr><td>Sam</td><td>13</td></tr>
     <tr><td>Tony</td><td>12</td></tr>
     </table>
     </div>
     <div>
    <asp:Button ID="btnExport" runat="server" Text="Export" 
         onclick="btnExport_Click" /></div>
    </form>
</body>
</html>
