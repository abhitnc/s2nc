<%@ Page Language="C#" AutoEventWireup="true" CodeFile="s2nCart.aspx.cs" Inherits="s2nCart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <a href="showProduct.aspx">Continue shopping</a>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Height="214px" Width="478px" ShowFooter="True">
                <Columns>
                    <asp:BoundField DataField="sno" HeaderText="sno" />
                    <asp:BoundField DataField="Category" HeaderText="Category" />
                    <asp:ImageField DataImageUrlField="fname" HeaderText="Product Image">
                        <ControlStyle Height="100px" Width="100px" />
                        <ItemStyle Height="100px" Width="100px" />
                    </asp:ImageField>
                    <asp:BoundField DataField="Name" HeaderText="Name" />
                    <asp:BoundField DataField="Price" HeaderText="Price" />
                    
                   
                                      
                </Columns>
                <FooterStyle BackColor="#FFCC00" />
            </asp:GridView>

            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Buy" />

        </div>
    </form>
</body>
</html>
