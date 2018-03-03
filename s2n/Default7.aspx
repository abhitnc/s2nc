<%@ Page Language="C#" Debug="true" AutoEventWireup="true" CodeFile="Default7.aspx.cs" Inherits="Default7" %>



<%@ Register Assembly="FreeTextBox" Namespace="FreeTextBoxControls" TagPrefix="FTB" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>Richtextbox Sample</title>
<script type="text/javascript">
function validate() {
var doc = document.getElementById('FreeTextBox1');
if (doc.value.length == 0) {
alert('Please Enter data in Richtextbox');
return false;
}
}
</script>
</head>
<body>
<form id="form1" runat="server">
<div>
<table>
<tr>
<td>
<FTB:FreeTextBox ID="FreeTextBox1" runat="server" Width="550px" Height="200px">
</FTB:FreeTextBox>
</td>
<td valign="top">

</td>
</tr>
</table>
</div>
<asp:Button ID="btnSubmit" runat="server" OnClientClick="return validate()" OnClick="btnSubmit_Click" 
Text="Submit"/><br />
    <asp:Label ID="lblContents" runat="server" />
    
    </form>
</body>
</html>
