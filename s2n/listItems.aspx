<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="listItems.aspx.cs" Inherits="listItems" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <h1>
        Items
        <small>List all Items</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="listItems.aspx"><i class="fa fa-dashboard"></i>Items</a></li>
        <li class="active">List all Items</li>
          <asp:TextBox ID="txtSearch" runat="server"  placeholder="Search Item" OnTextChanged="Search" AutoPostBack="true"></asp:TextBox>
        
      </ol>
    <p>
        <br />
        <center>
        <asp:RadioButtonList Font-Size="Large" ID="rblCountries" runat="server" AutoPostBack="true" OnSelectedIndexChanged="Country_Selected"
        RepeatDirection="Horizontal" Height="69px" Width="352px">
        <asp:ListItem Text="All" Value="" Selected="True"></asp:ListItem>
        <asp:ListItem Text="Snacks" Value="Snacks"></asp:ListItem>
        <asp:ListItem Text="Lunch" Value="Lunch"></asp:ListItem>
        <asp:ListItem Text="Offers" Value="Offers"></asp:ListItem>
        <asp:ListItem Text="ComboBox" Value="ComboBox"></asp:ListItem>
    </asp:RadioButtonList>
            </center>
        <br />
        <asp:DataList ID="DataList1" runat="server" OnItemCommand="DataList1_ItemCommand" BorderColor="White" BorderWidth="0px" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Center" RepeatColumns="4" RepeatDirection="Horizontal" CellSpacing="20" Height="168px" style="margin-top: 0px" Width="629px">
                <ItemTemplate>
                    <table class="auto-style1" border="1">
                        <tr>
                            <td style="text-align: center">
                                <asp:Image ID="Image1" runat="server" Height="100px" ImageUrl='<%# Eval("fname") %>' Width="100px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">Name:-<asp:Label ID="Label1" runat="server" Text='<%# Eval("Name") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: center">Category:-
                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("Category") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: center">Price:-
                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("Price") %>'></asp:Label>
                            </td>
                        </tr>
                       </table>
            </ItemTemplate>
                </asp:DataList>
        <br />
     
</asp:Content>

