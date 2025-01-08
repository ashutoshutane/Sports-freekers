<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<link rel="stylesheet" href="css/Account.css">
		<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap"
			rel="stylesheet">
		<link rel="stylesheet"
			href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@6.6.0/css/fontawesome.min.css"
			integrity="sha384-NvKbDTEnL+A8F/AA5Tc5kmMLSJHUO868P+lDtTpJIeQdGYaUIuLr4lVGOEA1OcMy" crossorigin="anonymous">
</head>
<body>
	<div class="">
			<div class="Container">
				<div class="Navbar">
					<div class="Logo">
						<img src="img/Logo.jpg" width="150px" height="60px" Style="border-radius:15px">
					</div>
					<nav>
						<ul id="MenuItems">
							<li><a href="Home.jsp">Home</a>
							<li>
							<li><a href="Products.jsp">Products</a>
							<li>
							<li><a href="About.jsp">About</a>
							<li>
							<li><a href="Contact.jsp">Contact</a>
							<li>
							<li><a href="Account.jsp">Account</a>
							<li>
						</ul>
					</nav>
					<a href="CartAction.jsp"><img src="img/cart.png" width="30px" height="30px"
							style="margin-bottom:10px"></a>
							<img src= "img/menu.png" class="menu-icon" style="margin-bottom:10px" onclick="menutoggle()">
				</div>

				<!-- account page  -->

				<div class="Account-page">
					<div class="container">
						<div class="row">
							<div class="col-1">
								 <img src="img/image1.png" width="100%">
							</div>
							<div class="col-2">
								<div class="form-container">
									<div class="form-btn">
										<span onclick="login()">User</span>
										<span onclick="admin()">Admin</span>
										<hr id="Indicator">
									</div>
									<form id= "LoginForm" action="LoginAction.jsp" method="post">
										<img src="img/Avatar.png" alt="">
										<input type="email" placeholder="Username" name="email" required>
										<input type="password" placeholder="Password" name="password">
										<button types="submit" class="btn" value="Login">Login</button>
										<a href="ForgotPassword.jsp">Forgot Password</a>
										<a href="SignUp.jsp">Sign Up</a>
									</form>
									<form id="AdminForm" action="LoginAction.jsp" method="post">
										<img src="img/Avatar.png" alt="">
										<input type="email" placeholder="Username" name="email" required>
										<input type="password" placeholder="Password" name="password">
										<button types="submit" class="btn">Login</button>
										<a href="">Forgot Password</a>
									</form>
								</div>
						   </div>
						</div>
					</div>
					<div class='whysignLogin'>
						<% String msg=request.getParameter("msg"); if("notexist".equals(msg)){ %>
						  <h1>Incorrect Username or Password</h1>
						  <%} %>
							<% if("invalid".equals(msg)){ %>
							  <h1>Some thing Went Wrong! Try Again !</h1>
							  <%} %>

					  </div>
				</div>
			</div>
		</div>
		</div>
		
		<!-- footer -->
		<div class="footer">
			<div class="container">
				<div class="row-2">
					<div class="footer-col-1">
						<h3>Download our App</h3>
						<p>Download App for Android and ios moile phone.</p>
						<div class="app-logo">
							<img src="img/play-store.png">
							<img src="img/app-store.png">
						</div>
					</div>
					<div class="footer-col-2">
						<img src="img/Logo.jpg">
						<p>Our Purpose Is to Sustainably Make the Pleasure and Benefits of Sports Accessible to the Many.</p>
					</div>
					<div class="footer-col-3">
						<h3>Useful Links</h3>
						<ul>
							<li>Coupons</li>
							<li>Blog Post</li>
							<li>Return Policy</li>
							<li>Join Affiliate</li>
						</ul>
					</div>
					<div class="footer-col-4">
						<h3>Follow us</h3>
						<ul>
							<li>Facebook</li>
							<li>Twitter</li>
							<li>Instagram</li>
							<li>Youtube</li>
						</ul>
					</div>
				</div>
				<hr>
				<p class="Copyright">Copyright 2024 - Fittness-Freakers</p>
			</div>
		</div>

		<!-- js for toggle menu -->
		 <script>
			var MenuItems = document.getElementById("MenuItems");
			MenuItems.style.maxHeight = "0px";
			function menutoggle(){
				if(MenuItems.style.maxHeight == "0px")
					{
						MenuItems.style.maxHeight = "200px";
					}
				else
					{
						MenuItems.style.maxHeight = "0px";
					}	
			}
		 </script>

		 <!-- js for toggle form  -->
		 <script>
		  	var LoginForm = document.getElementById("LoginForm");
			var AdminForm = document.getElementById("AdminForm");
			var Indicator = document.getElementById("Indicator");

				function admin(){
					AdminForm.style.transform = "translateX(0px)";
					LoginForm.style.transform = "translateX(0px)";
					Indicator.style.transform = "translateX(100px)";
				}

				function login(){
					AdminForm.style.transform = "translateX(300px)";
					LoginForm.style.transform = "translateX(300px)";
					Indicator.style.transform = "translateX(-50px)";

				}

			
		 </script>

		
</body>
</html>