<%@ Page Language="C#" AutoEventWireup="true" CodeFile="register.aspx.cs" EnableEventValidation="false" Inherits="register" %>
<!doctype html>
<html class="no-js" lang=""> <!--<![endif]-->
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>Food and Restorent One page Template</title>
        <meta name="description">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="apple-touch-icon" href="apple-touch-icon.png">
        <link rel="stylesheet" href="assets/css/bootstrap.min.css">
        <link href='https://fonts.googleapis.com/css?family=Pacifico' rel='stylesheet' type='text/css'>
        <link rel="stylesheet" href="assets/css/font-awesome.min.css">
        <!--        <link rel="stylesheet" href="assets/css/bootstrap-theme.min.css">-->
        <!--For Plugins external css-->
        <link rel="stylesheet" href="assets/css/animate/animate.css" />
        <link rel="stylesheet" href="assets/css/plugins.css" />
        <!--Theme custom css -->
        <link rel="stylesheet" href="assets/css/style.css">
        <!--Theme Responsive css-->
        <link rel="stylesheet" href="assets/css/responsive.css" />
        <script src="assets/js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
        <style type="text/css">
            [type="date"]:not(.has-value):before{
  color: lightgray;
  content: attr(placeholder);
}
        </style>
    </head>
    <body>
<form id="form1" runat="server">
        <!--[if lt IE 8]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->
		<div class='preloader'><div class='loaded'>&nbsp;</div></div>
        <header id="home" class="navbar-fixed-top" style="background-color:black">
            <div class="header_top_menu clearfix">	
                <div class="container">
                    <div class="row">	
                        <div class="col-md-5 col-md-offset-3 col-sm-12 text-right">
                            <div class="call_us_text">
								<a href=""><i class="fa fa-clock-o"></i> Order Foods 24/7</a>
								<a href=""><i class="fa fa-phone"></i>061 9876 5432</a>
							</div>
                        </div>
                        <div class="col-md-4 col-sm-12">
                            <div class="head_top_social text-right">
                                <a href=""><i class="fa fa-facebook"></i></a>
                                <a href=""><i class="fa fa-google-plus"></i></a>
                                <a href=""><i class="fa fa-twitter"></i></a>
                                <a href=""><i class="fa fa-linkedin"></i></a>
                                <a href=""><i class="fa fa-pinterest-p"></i></a>
                                <a href=""><i class="fa fa-youtube"></i></a>
                                <a href=""><i class="fa fa-phone"></i></a>
                                <a href=""><i class="fa fa-camera"></i></a>
                            </div>	
                        </div>
                    </div>			
                </div>
            </div>
            <!-- End navbar-collapse-->

            <div class="main_menu_bg">
                <div class="container"> 
                    <div class="row">
                        <nav class="navbar navbar-default">
                            <div class="container-fluid">
                                <!-- Brand and toggle get grouped for better mobile display -->
                                <div class="navbar-header">
                                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                                        <span class="sr-only">Toggle navigation</span>
                                        <span class="icon-bar"></span>
                                        <span class="icon-bar"></span>
                                        <span class="icon-bar"></span>
                                    </button>
                                    <a class="navbar-brand our_logo" href="#"><img src="assets/images/logo.png" alt="" /></a>
                                </div>

                                <!-- Collect the nav links, forms, and other content for toggling -->
                                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                                  <ul class="nav navbar-nav navbar-right">
                                        <li><a href="index.aspx#slider">Home</a></li>
                                        <li><a href="index.aspx#ourPakeg">Menu</a></li>
                                      <li><a href="#features">Features</a></li>
                                        <li><a href="index.aspx#portfolio">Offers</a></li>
                                        <li><a href="index.aspx#abouts">About us</a></li>
                                      <li><a href="index.aspx#mobaileapps">Contact us</a></li>
                                        <li><a href="login.aspx" class="booking">Log in</a></li>
                                        <li><a href="register.aspx" class="booking">Sign up</a></li>
                                    </ul>
                                </div><!-- /.navbar-collapse -->
                            </div><!-- /.container-fluid -->
                        </nav>
                    </div>
                </div>
            </div>	
        </header>
        <section id="abouts" class="abouts">
            <div class="container">
                <div class="row">
                    <div class="abouts_content">
                        <div class="col-md-6">
                            <div class="single_abouts_text text-center wow slideInLeft" data-wow-duration="1s">
                                <img src="assets/images/ab.png" alt="" />
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="single_abouts_text wow slideInRight" data-wow-duration="1s">
                                <h4>Registration page</h4>
                                <h3 style="font-size: 30px">Register today and get 15% off</h3>
                               <form action="#" id="formid">
                                        <div class="form-group">
                                            <asp:TextBox id="name" AutoCompleteType="Disabled" class="form-control" runat="server" placeholder="Name" />
                                            <asp:RequiredFieldValidator Display="Dynamic" ForeColor = "Red" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter your Name" ControlToValidate="name"></asp:RequiredFieldValidator>
                                     <asp:RegularExpressionValidator ForeColor = "Red" Display = "Dynamic" ControlToValidate = "name" ID="RegularExpressionValidator3" ValidationExpression = "^[\s\S]{3,}$" runat="server" ErrorMessage="Minimum 3 characters required."></asp:RegularExpressionValidator>
                                        </div>
                                         <div class="form-group">
                                            <asp:TextBox id="dob" AutoCompleteType="Disabled" runat="server" TextMode="Date" class="form-control" placeholder="Date of Birth" onchange="this.className=(this.value!=''?'has-value':'')" />
                                             <asp:RequiredFieldValidator Display="Dynamic" ForeColor = "Red" ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter your Date of Birth" ControlToValidate="dob"></asp:RequiredFieldValidator>
                                             <asp:RangeValidator Display="Dynamic" ID="RangeValidator1" ForeColor = "Red" ControlToValidate="dob" MaximumValue=Date.Now MinimumValue="01-01-1970" runat="server" ErrorMessage="Invalid Age"></asp:RangeValidator>
                                        </div>
                                        <div class="form-group">
                                           <asp:TextBox id="email" AutoCompleteType="Disabled" runat="server" TextMode="Email" class="form-control" placeholder="Email Address" />
                                            <asp:RequiredFieldValidator Display="Dynamic" ForeColor = "Red" ID="RequiredFieldValidator7" runat="server" ErrorMessage="Enter your Email Adress" ControlToValidate="email"></asp:RequiredFieldValidator>
                                            <asp:RegularExpressionValidator Display="Dynamic" ForeColor = "Red" ID="RegularExpressionValidator1" runat="server" ErrorMessage="Wrong email address" ControlToValidate="email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                        </div>
                                         <div class="form-group">
                                            <asp:TextBox id="mobile" AutoCompleteType="Disabled" runat="server" TextMode="Number" class="form-control" placeholder="Mobile No." />
                                             <asp:RequiredFieldValidator ForeColor="Red" Display="Dynamic" ID="RequiredFieldValidator4" runat="server" ErrorMessage="Enter your mobile number" ControlToValidate="mobile"></asp:RequiredFieldValidator>
                                             <asp:RegularExpressionValidator Display="Dynamic" ForeColor="Red" ID="RegularExpressionValidator2" runat="server" ControlToValidate="mobile" ErrorMessage="Wrong mobile number" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
                                        </div>
                                          <div class="form-group">
                                            <asp:TextBox id="password" onkeyup="CheckPasswordStrength(this.value)" ToolTip="Password must contain: Minimum 8 characters atleast 1 Uppercase, 1 Lowercase and 1 Number" TextMode="Password" runat="server" class="form-control" placeholder="Password" /><span id="password_strength"></span>
                                        <asp:RequiredFieldValidator Display="Dynamic" ForeColor = "Red" ID="RequiredFieldValidator5" runat="server" ErrorMessage="Enter your password" ControlToValidate="password"></asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator Display="Dynamic"  runat="server" ForeColor = "Red" ID="abc1" ValidationExpression="^(?=.*\d+)(?=.*[a-zA-Z])[0-9a-zA-Z!@#$%]{6,10}$" ErrorMessage="Bad password" ControlToValidate="password"></asp:RegularExpressionValidator>
                                        </div>
                                    <div class="form-group">
                                            <asp:TextBox id="cpassword" ToolTip="Password must contain: Minimum 8 characters atleast 1 Uppercase, 1 Lowercase and 1 Number" TextMode="Password" runat="server" class="form-control" placeholder="Confirm Passowrd" />
                                        <asp:RequiredFieldValidator Display="Dynamic" ForeColor = "Red" ID="RequiredFieldValidator6" runat="server" ErrorMessage="Enter your password" ControlToValidate="cpassword"></asp:RequiredFieldValidator>
                                    <asp:CompareValidator Display="Dynamic" ForeColor = "Red" ID="CompareValidator1" ControlToValidate="cpassword" ControlToCompare="password" runat="server" ErrorMessage="Password does not match"></asp:CompareValidator>    
                                    </div>
                                   <asp:ValidationSummary ID="abhi1" ForeColor = "Red" ShowMessageBox="true" runat="server" ShowSummary="false" />
                                        <asp:Button ID="r_submit" runat="server" Text="Submit" class="btn btn-primary" OnClick="r_submit_Click"/>
                                    </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section id="footer_widget" class="footer_widget">
            <div class="container">
                <div class="row">
                    <div class="footer_widget_content text-center">
                        <div class="col-md-4">
                            <div class="single_widget wow fadeIn" data-wow-duration="2s">
                                <h3>Our Contact details</h3>
                                <div class="single_widget_info">
                                    <p>Class no. 813, 8th floor
                                        <span>S M Shetty College</span>
                                        <span>Powai, Mumbai 400076</span>
                                        <span class="phone_email">phone: +91 84220 20727</span>
                                        <span>Email: support@s2ncafe.com</span></p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="single_widget wow fadeIn" data-wow-duration="4s">
                                <h3>Our availability(Timing)</h3>

                                <div class="single_widget_info">
                                    <p><span class="date_day">Monday To Friday</span>
                                        <span>8:00am to 10:00pam(Breakfast)</span>
                                        <span>9:00am to 08:00pm(Snacks)</span>
                                        <span>11:00am to 03:00pm(Lunch)</span>

                                        <span class="date_day">Saturday</span>
                                        <span>8:00am to 10:00pam(Breakfast)</span>
                                        <span>9:00am to 06:00pm(Snacks)</span>
                                        <span>11:00am to 01:00pm(Lunch)</span></p>
                                </div>
                            </div>
                        </div>
                        
                        <div class="col-md-4">
                            <div class="single_widget wow fadeIn" data-wow-duration="4s">
                               </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--Footer-->
        <footer id="footer" class="footer">
            <div class="container text-center">
                <div class="row">
                    <div class="col-sm-12">
                        <div class="copyright wow zoomIn" data-wow-duration="3s">
                            <p>Made with <i class="fa fa-heart"></i> by Abhishek and Prajosh for Project. All Rights Reserved</p>
						</div>
                    </div>
                </div>
            </div>
        </footer>
		<div class="scrollup">
            <a href="#"><i class="fa fa-chevron-up"></i></a>
		</div>
        <script src="assets/js/vendor/jquery-1.11.2.min.js"></script>
        <script src="assets/js/vendor/bootstrap.min.js"></script>
        <script src="assets/js/jquery-easing/jquery.easing.1.3.js"></script>
        <script src="assets/js/wow/wow.min.js"></script>
        <script src="assets/js/plugins.js"></script>
        <script src="assets/js/main.js"></script>
    <script type="text/javascript">
        function CheckPasswordStrength(password) {
            var password_strength = document.getElementById("password_strength");

            //TextBox left blank.
            if (password.length == 0) {
                password_strength.innerHTML = "";
                return;
            }

            //Regular Expressions.
            var regex = new Array();
            regex.push("[A-Z]"); //Uppercase Alphabet.
            regex.push("[a-z]"); //Lowercase Alphabet.
            regex.push("[0-9]"); //Digit.
            regex.push("[$@$!%*#?&]"); //Special Character.

            var passed = 0;

            //Validate for each Regular Expression.
            for (var i = 0; i < regex.length; i++) {
                if (new RegExp(regex[i]).test(password)) {
                    passed++;
                }
            }

            //Validate for length of Password.
            if (passed > 2 && password.length > 8) {
                passed++;
            }

            //Display status.
            var color = "";
            var strength = "";
            switch (passed) {
                case 0:
                case 1:
                    strength = "Weak";
                    color = "red";
                    break;
                case 2:
                    strength = "Good";
                    color = "darkorange";
                    break;
                case 3:
                case 4:
                    strength = "Strong";
                    color = "green";
                    break;
                case 5:
                    strength = "";
                    color = "darkgreen";
                    break;
            }
            password_strength.innerHTML = strength;
            password_strength.style.color = color;
        }
    </script>
    <asp:Label ID="Label1" runat="server" Text="Label" Visible="false"></asp:Label>
    </form>
  </body>
</html>