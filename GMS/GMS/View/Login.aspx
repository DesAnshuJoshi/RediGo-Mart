<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="GMS.View.Login2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>RediGo Mart | Login</title>
	<link rel="stylesheet" type="text/css" href="../../Asset/Lib/Bootstrap/css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="../Asset/Lib/Font/font-awesome-4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="../Asset/Lib/animate/animate.css">
	<link rel="stylesheet" type="text/css" href="../Asset/Lib/css-hamburgers/hamburgers.min.css">
	<link rel="stylesheet" type="text/css" href="../Asset/Lib/select2/select2.min.css">
	<link rel="stylesheet" type="text/css" href="../Asset/Lib/Style/util.css">
	<link rel="stylesheet" type="text/css" href="../Asset/Lib/Style/main.css">
    <link rel="Stylesheet" href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css'>
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com"/>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Poppins:wght@500&display=swap" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Dongle&display=swap"  />
    <link rel="icon" type="image/png" href="../../Asset/Images/fast-cart.png" />
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script> <!--SweetAlert-->
    <style type="text/css">
        .form-check-input, .form-check-input:checked[type=radio]
        {
            box-shadow: none!important;
            border: unset;
            background-color:transparent;
            border-color: #666;
        }
        input[type='radio']:after 
        {
            width: 15px;
            height: 15px;
            border-radius: 15px;
            top: -2px;
            left: -1px;
            position: relative;
            background-color: #e6e6e6;
            content: '';
            display: inline-block;
            visibility: visible;
            border: 2px solid #666;
        }
        input[type='radio']:checked:after 
        {
            width: 15px;
            height: 15px;
            border-radius: 15px;
            top: -2px;
            left: -1px;
            position: relative;
            background-color: #dc3545;
            content: '';
            display: inline-block;
            visibility: visible;
            border: 2px solid #666;
        }
    </style>
</head>
<body>
    <div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100" style="padding-top: 15px; padding-left: 3rem;">
                <span style="border-radius: 50px; background-color: #dc3545; height: 35px; width: 35px; margin-top: 4rem;"><a href="Index.aspx" title="Go to Home" style="color: #fff; font-size: 1.5rem; padding: 6px 0 0 6px; text-decoration: none;"><i class='bx bx-left-arrow-alt'></i></a></span>
				<div class="login100-pic js-tilt" data-tilt style="padding-top: 10rem; margin-left: 0;">
					<img src="../Asset/Images/shopping.gif" alt="IMG">
				</div>

				<form class="login100-form" runat="server" id="form1">
					<div class="login100-pic">
						<img src="../Asset/Images/logo.png" width="150px" style="margin: 2.5rem 0 2.5rem 2rem;" alt="IMG">
					</div>
					<span class="login100-form-title text-danger" style="margin-left: 1.5rem; padding-bottom: 30px;font-family: 'Poppins', Sans-Serif; font-weight: 800;">
						Welcome Member
					</span>

					<div class="wrap-input100 m-l-20">
                        <asp:TextBox ID="EmailTb" runat="server" class="input100" TextMode="Email" placeholder="Email" style="font-family: 'Poppins', sans-serif" />
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-envelope" aria-hidden="true"></i>
						</span>
					</div>

					<div class="wrap-input100 m-l-20" ">
						<input class="input100" id="PassTb" runat="server" type="password" name="pass" placeholder="Password" style="font-family: 'Poppins',sans-serif">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-lock" aria-hidden="true"></i>
						</span>
					</div>
					
					<div class="wrap-input100 validate-input m-l-20" style="background-color: #e6e6e6; border-radius: 100px; height: 7%;">
                        <div class="form-check form-check-inline m-0" style="padding: 12px 55px;">
                            <input class="form-check-input" runat="server" type="radio" id="SellerRadio" value="option1" name="Role"/>
                            <span class="focus-input100"></span>
                            <label id="Label1" class="form-check-label pl-0" runat="server" for="SellerRadio" style="font-family: 'Poppins',sans-serif; color: #666">Seller</label>
                        </div>
                        <div class="form-check form-check-inline m-0" style="padding: 12px 25px;">
                            <input class="form-check-input" runat="server" type="radio" id="AdminRadio" value="option2" checked="true" name="Role"/>
                            <span class="focus-input100"></span>
                            <label id="Label2" class="form-check-label pl-0" runat="server" for="AdminRadio" style="font-family: 'Poppins',sans-serif; color: #666;">Admin</label>
                        </div>
                    </div>
					
					<div class="container-login100-form-btn m-l-20">
						<label id="InfoMsg" runat="server" class="text-danger"></label>
                        <asp:Button ID="LoginBtn" runat="server" class="login100-form-btn" Text="Login" 
                            style="font-family: 'Poppins', sans-serif" onclick="LoginBtn_Click" />
					</div>

					<div class="text-center p-t-12 m-l-20">
						<span class="txt1" style="font-family: 'Poppins',sans-serif">
							Forgot
						</span>
						<a class="txt2" href="#" style="font-family: 'Poppins',sans-serif">
							Username / Password?
						</a>
					</div>

					<div class="text-center p-t-136">
					
					</div>
				</form>
			</div>
		</div>
	</div>
    <!--===============================================================================================-->	
	<script src="../Asset/Lib/jquery/jquery-3.2.1.min.js" type="text/javascript"></script>
    <!--===============================================================================================-->
	<script src="../Asset/Lib/Bootstrap/js/popper.min.js" type="text/javascript"></script>
	<script src="../Asset/Lib/Bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    <!--===============================================================================================-->
	<script src="../Asset/Lib/select2/select2.min.js" type="text/javascript"></script>
    <!--===============================================================================================-->
	<script src="../Asset/Lib/tilt/tilt.jquery.min.js" type="text/javascript"></script>
	<script type="text/javascript">
	    $('.js-tilt').tilt({
	        scale: 1.1
	    })
	</script>
    <!--===============================================================================================-->
	<script src="../Asset/Js/main.js" type="text/javascript"></script>
    <!--===============================================================================================-->
    
</body>
</html>
