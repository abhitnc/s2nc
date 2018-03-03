<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" EnableEventValidation="false" %>

<!doctype html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang=""> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8" lang=""> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9" lang=""> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js" lang=""> <!--<![endif]-->
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>Food and Restorent One page Template</title>
        <meta name="description" content="">
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
    </head>
    <body>
        <script src='https://www.google.com/recaptcha/api.js'></script>
        <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<script type="text/javascript" src="https://www.google.com/recaptcha/api.js?onload=onloadCallback&render=explicit"
async defer></script>
<script type="text/javascript">
var onloadCallback = function () {
    grecaptcha.render('dvCaptcha', {
        'sitekey': '<%=ReCaptcha_Key %>',
        'callback': function (response) {
            $.ajax({
                type: "POST",
                url: "CS.aspx/VerifyCaptcha",
                data: "{response: '" + response + "'}",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (r) {
                    var captchaResponse = jQuery.parseJSON(r.d);
                    if (captchaResponse.success) {
                        $("[id*=txtCaptcha]").val(captchaResponse.success);
                        $("[id*=rfvCaptcha]").hide();
                    } else {
                        $("[id*=txtCaptcha]").val("");
                        $("[id*=rfvCaptcha]").show();
                        var error = captchaResponse["error-codes"][0];
                        $("[id*=rfvCaptcha]").html("RECaptcha error. " + error);
                    }
                }
            });
        }
    });
};
</script>
<form id="form1" runat="server">
        <!--[if lt IE 8]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->
    
                    <asp:TextBox ID="TextBox1" runat="server" class="form-control" placeholder="User ID"></asp:TextBox>
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
                                    <a class="navbar-brand our_logo" href="#"><img src="assets/images/LOGO S2N.png" alt="" /></a>
                                </div>

                                <!-- Collect the nav links, forms, and other content for toggling -->
                                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">

                                    <ul class="nav navbar-nav navbar-right">
                                        <li><a href="index.aspx#slider">Home</a></li>
                                        <li><a href="index.aspx#ourPakeg">Menu</a></li>
                                      <!--  <li><a href="#features">Features</a></li> -->
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
        </header> <!-- End Header Section -->
        <!--
        <section id="slider" class="slider">
            <div class="slider_overlay">
                <div class="container">
                    <div class="row">
                        <div class="main_slider text-center">
                            <div class="col-md-12">
                                <div class="main_slider_content wow zoomIn" data-wow-duration="1s">
                                    <h1>S2N Cafe</h1>
                                    <p>South 2 North Cafe</p>
                                    <button href="" class="btn-lg">Click here</button>
                                </div>
                            </div>	
                        </div>

                    </div>
                </div>
            </div>  
        </section>
            -->
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
                                <h4>Login page</h4>
              <!--                  <h3 style="font-size: 30px"></h3>   -->
                               <form action="#" id="formid">
                                            <div class="form-group">
                                           <!-- <input type="email" class="form-control" name="email" placeholder="Email Address" required=""> -->
                                                <asp:TextBox AutoCompleteType="Disabled" ID="email" TextMode="Email" runat="server" class="form-control" name="email" placeholder="Email Address" required=""></asp:TextBox>
                                                <asp:RequiredFieldValidator Display="Dynamic" ControlToValidate="email" runat="server" ErrorMessage="Enter your Registered Email ID" ForeColor = "Red" ID="EmailRequired"></asp:RequiredFieldValidator>
                                            </div>
                                            <div class="form-group">
                                                <asp:TextBox ID="password" TextMode="Password" runat="server" class="form-control" name="password" placeholder="Password" required=""></asp:TextBox>
                                                <asp:RequiredFieldValidator Display="Dynamic" ID="passwordvalidation" ErrorMessage="Enter your password" runat="server" ForeColor = "Red" ControlToValidate="password"></asp:RequiredFieldValidator>
                                                </div>
<div id="dvCaptcha">
</div>
                                                <div>
                                            <asp:TextBox ID="txtCaptcha" runat="server" Style="display: none" />
                                       </div>
                                  <asp:Button  ID="Button1" runat="server" class="btn btn-primary" OnClick="btnSubmit_Click" Text="Submit" /><br />
                             <br /> <u><a href="AdminLogin.aspx">Admin Login</a></u><br />
                                   <u><a href="ForgetPassowrd.aspx">Forget Password ?</a></u>

                                   <!--          <input type="submit" value="submit" >-->
                                   <asp:Label ID="Label1" runat="server"></asp:Label>
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

                                <div class="footer_socail_icon">
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
    </form>
            </body>
</html>