<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AddStaff.aspx.cs" Inherits="AddStaff" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>
        Dashboard
        <small>Control panel</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Dashboard</li>
      </ol>
        
        
    <center>
    <p class="login-box-msg">Register a new staff</p>
      <asp:Label ID="stimestamp" runat="server" Text="Label" Visible="false"></asp:Label>
        <table>    <tr>
            <td>
      <div class="form-group has-feedback">
          <asp:TextBox runat="server" class="form-control" placeholder="Full name" TextMode="SingleLine" ID="name"></asp:TextBox>
        <span class="glyphicon glyphicon-user form-control-feedback"></span>
           <asp:RequiredFieldValidator Display="Dynamic" ForeColor="Red" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter your first name" ControlToValidate="name"></asp:RequiredFieldValidator>                      
      </div>
                </td>
            </tr>
            <tr>
            <td>
      <div class="form-group has-feedback">
        <asp:TextBox ID="email" runat="server" class="form-control" TextMode="Email" placeholder="Email Address"></asp:TextBox>
        <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
           <asp:RequiredFieldValidator Display="Dynamic" ForeColor="Red" ID="RequiredFieldValidator7" runat="server" ErrorMessage="Enter your Email Adress" ControlToValidate="email"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator Display="Dynamic" ForeColor="Red" ID="RegularExpressionValidator1" runat="server" ErrorMessage="Wrong email address" ControlToValidate="email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </div></td>
                </tr>
            <tr>
            <td>
      
      <div class="form-group has-feedback">
        <asp:TextBox ID="mobile" runat="server" TextMode="Number" class="form-control" placeholder="Mobile Number"></asp:TextBox>
        <span class="glyphicon glyphicon-earphone form-control-feedback"></span>
          <asp:RequiredFieldValidator Display="Dynamic" ForeColor="Red" ID="RequiredFieldValidator4" runat="server" ErrorMessage="Enter your mobile number" ControlToValidate="mobile"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator Display="Dynamic" ForeColor="Red" ID="RegularExpressionValidator2" runat="server" ControlToValidate="mobile" ErrorMessage="Wrong mobile number" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
      </div>
                </td></tr>
            <tr><td>
      <div class="form-group has-feedback">
        <asp:TextBox ID="address" TextMode="MultiLine" runat="server"  class="form-control" placeholder="Full Address"></asp:TextBox>
        <span class="glyphicon glyphicon-map-marker form-control-feedback"></span>
          <asp:RequiredFieldValidator Display="Dynamic" ForeColor="Red" ID="RequiredFieldValidator5" runat="server" ErrorMessage="Address is required" ControlToValidate="address"></asp:RequiredFieldValidator>
      </div></td>
                </tr>
            <tr>
                <td>
        <div class="form-group has-feedback">
        <asp:TextBox ID="dob" TextMode="Date" runat="server"  class="form-control" placeholder="DOB"></asp:TextBox>
        <span class="glyphicon glyphicon-calendar form-control-feedback"></span>
            <asp:RequiredFieldValidator Display="Dynamic" ForeColor="Red" ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter your Date of Birth" ControlToValidate="dob"></asp:RequiredFieldValidator>
            <asp:RangeValidator Display="Dynamic" ForeColor="Red" ID="RangeValidator1" ControlToValidate="dob" MaximumValue=Date.Now MinimumValue="01-01-1970" runat="server" ErrorMessage="Invalid DOB"></asp:RangeValidator>
      </div>
                    </td>
                </tr>
            <tr>
                <td>
            <div class="form-group has-feedback">
          <asp:TextBox runat="server" class="form-control" placeholder="Aadhar Card" TextMode="Number" ID="aadhar"></asp:TextBox>
        <span class="glyphicon glyphicon-text-color form-control-feedback"></span>
           <asp:RequiredFieldValidator Display="Dynamic" ForeColor="Red" ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter Aadhar card" ControlToValidate="name"></asp:RequiredFieldValidator>
           <asp:RegularExpressionValidator Display="Dynamic" ForeColor="Red" ID="RegularExpressionValidator3" runat="server" ControlToValidate="aadhar" ErrorMessage="Wrong aadhar number" ValidationExpression="[0-9]{}"></asp:RegularExpressionValidator>
      </div></td>
                </tr>
            <tr>
                <td>
                    <div class="row">
        <!-- /.col -->
        <div class="col-xs-4">
            <asp:ValidationSummary ID="abhi1" ShowMessageBox="true" runat="server" ShowSummary="false" />
          <asp:Button OnClick="sa_submit_Click" Text="Register" runat="server" class="btn btn-primary btn-block btn-flat"></asp:Button>
        </div>
        <!-- /.col -->
      </div>
                    </td></tr>
            </table>
        </center>
   
  <!-- /.form-box -->
</asp:Content>

