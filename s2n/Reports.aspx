<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Reports.aspx.cs" Inherits="Reports" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Calendar id="Calendar1" OnDayRender=" Calendar1_DayRender" runat="server" ></asp:Calendar>
        </div>
    </form>
</body>
</html>
