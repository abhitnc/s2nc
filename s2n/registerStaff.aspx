<%@ Page Language="C#" AutoEventWireup="true" CodeFile="registerStaff.aspx.cs" Inherits="registerStaff" %>

<!DOCTYPE html>
<html>
<head>
  
</head>
<body class="hold-transition register-page">
<div class="register-box">
  <div class="register-logo">
    <a href="../../index2.html"><b>Admin</b>LTE</a>
  </div>

  <div class="register-box-body">
    <p class="login-box-msg">Register a new membership</p>

    <form action="index.aspx" method="post" runat="server">
      <div class="form-group has-feedback">
          <asp:TextBox runat="server" class="form-control" placeholder="Full name" TextMode="SingleLine" ID="name"></asp:TextBox>
        <span class="glyphicon glyphicon-user form-control-feedback"></span>
      </div>
      <div class="form-group has-feedback">
        <asp:TextBox ID="email" runat="server" class="form-control" TextMode="Email" placeholder="Email Address"></asp:TextBox>
        <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
      </div>
      <div class="form-group has-feedback">
        <asp:TextBox ID="mobile" runat="server" TextMode="Number" class="form-control" placeholder="Mobile Number"></asp:TextBox>
        <span class="glyphicon glyphicon-earphone form-control-feedback"></span>
      </div>
      <div class="form-group has-feedback">
        <asp:TextBox ID="address" TextMode="MultiLine" runat="server"  class="form-control" placeholder="Full Address"></asp:TextBox>
        <span class="glyphicon glyphicon-map-marker form-control-feedback"></span>
      </div>
        <div class="form-group has-feedback">
        <asp:TextBox ID="dob" TextMode="Date" runat="server"  class="form-control" placeholder="DOB"></asp:TextBox>
        <span class="glyphicon glyphicon-calendar form-control-feedback"></span>
      </div>
      <div class="row">
        <!-- /.col -->
        <div class="col-xs-4">
          <asp:Button Text="Register" runat="server" class="btn btn-primary btn-block btn-flat"></asp:Button>
        </div>
        <!-- /.col -->
      </div>
    </form>
    </div>
  <!-- /.form-box -->
</div>
<!-- /.register-box -->

<!-- jQuery 3 -->
<script src="bower_components/jquery/dist/jquery.min.js"></script>
<!-- Bootstrap 3.3.7 -->
<script src="bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- iCheck -->
<script src="plugins/iCheck/icheck.min.js"></script>
<script>
  $(function () {
    $('input').iCheck({
      checkboxClass: 'icheckbox_square-blue',
      radioClass: 'iradio_square-blue',
      increaseArea: '20%' // optional
    });
  });
</script>
</body>
</html>
