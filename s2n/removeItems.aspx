<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="removeItems.aspx.cs" Inherits="removeItems" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>
        Items
        <small>Remove Product</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="removeItems.aspx"><i class="fa fa-dashboard"></i> Items</a></li>
        <li class="active">Remove Items</li>
      </ol>

    <br />
    <br />
    <br />
    <p>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="uId" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <Columns>
                <asp:BoundField DataField="uId" HeaderText="uId" InsertVisible="False" ReadOnly="True" SortExpression="uId" />
                <asp:BoundField DataField="Token_of_Product" HeaderText="Token_of_Product" SortExpression="Token_of_Product" />
                <asp:BoundField DataField="Name_of_Product" HeaderText="Name_of_Product" SortExpression="Name_of_Product" />
                <asp:BoundField DataField="Cost" HeaderText="Cost" SortExpression="Cost" />
                <asp:CommandField ButtonType="Button" HeaderText="Action" ShowDeleteButton="True" ShowEditButton="True" ShowHeader="True" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [product]" UpdateCommand="UPDATE product SET Token_of_Product = @Token_of_Product, Cost = @Cost, Name_of_Product = @Name WHERE (Token_of_Product = @oT) AND (Cost = @oC) AND (Name_of_Product = @oN )">
            <UpdateParameters>
                <asp:Parameter Name="Token_of_Product" />
                <asp:Parameter Name="Cost" />
                <asp:Parameter Name="Name" />
                <asp:Parameter Name="oT" />
                <asp:Parameter Name="oC" />
                <asp:Parameter Name="oN" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
    </p>
    <br />
    <br />
</asp:Content>

