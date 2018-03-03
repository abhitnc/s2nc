<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminLogin.aspx.cs" Inherits="AdminLogin" %>

<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>S2N | Log in</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.7 -->
  <link rel="stylesheet" href="bower_components/bootstrap/dist/css/bootstrap.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="bower_components/font-awesome/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="bower_components/Ionicons/css/ionicons.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="dist/css/AdminLTE.min.css">
  <!-- iCheck -->
  <link rel="stylesheet" href="plugins/iCheck/square/blue.css">

  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->

  <!-- Google Font -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
</head>
<body class="hold-transition login-page">
    <form runat="server">
<div class="login-box">
  <div class="login-logo">
    <a href="#"><b>S2N</b>&nbsp;Admin-Panel</a>
  </div>
  <div class="login-box-body">
    <p class="login-box-msg">Sign in to start your session</p>
      <div class="form-group has-feedback">
        <asp:TextBox ID="email" TextMode="Email" AutoCompleteType="Disabled" runat="server" class="form-control" placeholder="Email"></asp:TextBox>
        <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
          <asp:RequiredFieldValidator Display="Dynamic" ForeColor="Red" ControlToValidate="email" runat="server" ErrorMessage="Enter your Registered Email ID" ID="EmailRequired"></asp:RequiredFieldValidator>
      </div>
      <div class="form-group has-feedback">
        <asp:TextBox ID="password" TextMode="Password" runat="server" class="form-control" placeholder="Password"></asp:TextBox>
        <span class="glyphicon glyphicon-lock form-control-feedback"></span>
          <asp:RequiredFieldValidator Display="Dynamic" ForeColor="Red" ID="passwordvalidation" ErrorMessage="Enter your password" runat="server" ControlToValidate="password"></asp:RequiredFieldValidator>
      </div>
      <div class="row">
        <div class="col-xs-8">
          <div class="checkbox icheck">
            <label>
            </label>
          </div>
        </div>
        <div class="col-xs-4">
            <asp:Button OnClick="submit_Click" runat="server" class="btn btn-primary btn-block btn-flat" ID="submit" Text="Sign In" />
        </div>
      </div>
  </div>
</div>
<script src="bower_components/jquery/dist/jquery.min.js"></script>
<script src="bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
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
    </form>
</body>
</html>