<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="addItems.aspx.cs" Inherits="addItems" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     <h1>
        Items
        <small>Add Product</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="addItems.aspx"><i class="fa fa-dashboard"></i> Items</a></li>
        <li class="active">Add Items</li>
      </ol>
        
       
    <p class="login-box-msg">Add product</p>
   <center>
    <table style="text-align:center;">
        <tr>
            <td>
      <div class="form-group has-feedback">
          <asp:TextBox runat="server" AutoCompleteType="Disabled" class="form-control" placeholder="Name of Product" TextMode="SingleLine" ID="TextBox1"></asp:TextBox>
           <asp:RequiredFieldValidator Display="Dynamic" ForeColor="Red" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Name of product" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>                      
      </div>
           </td>
            </tr>
           <tr>
            <td>
      <div class="form-group has-feedback">
          <asp:TextBox runat="server" class="form-control" placeholder="Token of Product" TextMode="SingleLine" ID="TextBox2"></asp:TextBox>
           <asp:RequiredFieldValidator Display="Dynamic" ForeColor="Red" ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter Token of product" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>                      
      </div>
           </td>
            </tr>
         <tr>
            <td>
      <div class="form-group has-feedback">
          <asp:TextBox runat="server" AutoCompleteType="Disabled" class="form-control" placeholder="Cost of Product" TextMode="Number" ID="TextBox3"></asp:TextBox>
           <asp:RequiredFieldValidator Display="Dynamic" ForeColor="Red" ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter Cost of product" ControlToValidate="TextBox3"></asp:RequiredFieldValidator>                      
      </div>
           </td>
            </tr>
       <tr>
            <td>
                <div class="form-group has-feedback">
          Category&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem Selected="True">--Select--</asp:ListItem>
            <asp:ListItem>Snacks</asp:ListItem>
            <asp:ListItem>Lunch</asp:ListItem>
            <asp:ListItem>Offers</asp:ListItem>
            <asp:ListItem>Combo-Box</asp:ListItem>
        </asp:DropDownList><asp:RequiredFieldValidator Display="Dynamic" InitialValue="--Select--" ForeColor="Red" ID="RequiredFieldValidator4" runat="server" ErrorMessage="Select the Category" ControlToValidate="DropDownList1"></asp:RequiredFieldValidator>
        </div>
            </td>
        </tr>
        <tr>
            <td>
            <div class="form-group has-feedback">
           Upload Image:&nbsp;&nbsp;<asp:FileUpload ID="FileUpload1" runat="server" />
                <asp:RequiredFieldValidator Display="Dynamic" ForeColor="Red" ID="RequiredFieldValidator5" runat="server" ErrorMessage="Upload the image of product" ControlToValidate="FileUpload1"></asp:RequiredFieldValidator>
      </div>
        </td>
        </tr>
        <tr>
            <td>
      <div class="row">
        <!-- /.col -->
        <div class="col-xs-4">
           <asp:ValidationSummary ID="abhi1" ShowMessageBox="true" runat="server" ShowSummary="false" />
          <asp:Button OnClick="Button1_Click" Text="Add" runat="server" class="btn btn-primary btn-block btn-flat"></asp:Button>
        </div>
        <!-- /.col -->
      </div>
                 <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
        <br />
        <br />
        <div class="image">
            <div class="addimage">
          <asp:HyperLink ID="HyperLink1" runat="server" Visible="False">HyperLink</asp:HyperLink>
        </div>
            </div>
                </td>
        </tr>
        </table>
         </center>
</asp:Content>

