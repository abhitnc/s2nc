<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="removeStaff.aspx.cs" Inherits="removeStaff" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
<br/>
    <br/>
    <br/>
        Search by Name:-<asp:TextBox ID="searchfield" runat="server"></asp:TextBox>
    <asp:Button ID="Bsearch" runat="server" Text="Search" OnClick="Search" />
        <br />
        <br />
        <br /><asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Height="186px" Width="783px" AllowPaging="True" AllowSorting="True" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
            <AlternatingRowStyle BackColor="#CCCCCC" />
        <Columns>
            <asp:BoundField DataField="Time_Of_Registration" HeaderText="Time_Of_Registration" SortExpression="Time_Of_Registration" />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="Date_of_Birth" HeaderText="Date_of_Birth" SortExpression="Date_of_Birth" />
            <asp:BoundField DataField="Email_Address" HeaderText="Email_Address" SortExpression="Email_Address" />
            <asp:BoundField DataField="Mobile_Number" HeaderText="Mobile_Number" SortExpression="Mobile_Number" />
            <asp:BoundField DataField="Aadhar_Card" HeaderText="Aadhar_Card" SortExpression="Aadhar_Card" />
        </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
    </asp:GridView>    

    <br />
     Enter Name to Update or Delete Staff's Data:-
        <asp:TextBox ID="Sname" runat="server"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Search" />
        &nbsp;
        <asp:Label ID="valid" runat="server" ForeColor="#CC0000" Text="Enter Value to Continue*" Visible="False"></asp:Label>
        <br />
        <br />
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label1" runat="server" Text="ID:-" Visible="false"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Uid" runat="server" Text="Label" Visible="false"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label2" runat="server" Text="Name:-" Visible="false"></asp:Label>
                </td>
                <td>
        <asp:TextBox ID="Uname" runat="server" Visible="false"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label3" runat="server" Text="Date of Birth:-" Visible="false"></asp:Label>
                </td>
                <td>
        <asp:TextBox ID="Udob" runat="server" Visible="false"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label5" runat="server" Text="Phone No:-" Visible="false"></asp:Label>
                </td>
                <td>
        <asp:TextBox ID="uphone_no" runat="server" Visible="false"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label6" runat="server" Text="Email ID:-" Visible="false"></asp:Label>
                </td>
                <td>
        <asp:TextBox ID="Uemail_id" runat="server" Visible="false"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label4" runat="server" Text="Aadhar Card:-" Visible="false"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="Uaadhar_card" runat="server" Visible="false"></asp:TextBox>
        
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Update" Visible="false" />
&nbsp;&nbsp;
                    <asp:Button ID="Button3" runat="server" Text="Delete" OnClick="Button3_Click" Visible="false" />
                </td>
            </tr>
        </table>
          
</asp:Content>

