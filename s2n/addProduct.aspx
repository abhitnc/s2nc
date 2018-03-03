<%@ Page Language="C#" AutoEventWireup="true" CodeFile="addProduct.aspx.cs" Inherits="addProduct" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .image{

            height:100px;
            width:100px;
        }
        .addimage{
            height:100px;
            width:100px;

        }
     
        </style>
</head>
<body>
    <form id="form1" runat="server">
       
        
       
        Name:-
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        <br />
        Token Id:-<asp:TextBox ID="TextBox2" runat="server" TextMode="SingleLine"></asp:TextBox>
        <br />
        <br />
        Category:-
        
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem Selected="True">--Select--</asp:ListItem>
            <asp:ListItem>Snacks</asp:ListItem>
            <asp:ListItem>Lunch</asp:ListItem>
            <asp:ListItem>Offers</asp:ListItem>
            <asp:ListItem>Combo-Box</asp:ListItem>
        </asp:DropDownList>
        
        <br />
        <br />
        Price:-
        <asp:TextBox ID="TextBox3" runat="server" TextMode="Number" min="0"></asp:TextBox>
        <br />
        <br />
        Upload images:-<asp:FileUpload ID="FileUpload1" runat="server" />
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
        <br />
        <br />
        <div class="image">
            <div class="addimage">
                <asp:HyperLink ID="HyperLink1" runat="server" Visible="False">HyperLink</asp:HyperLink>
        </div>
            </div>
    </form>
</body>
</html>
