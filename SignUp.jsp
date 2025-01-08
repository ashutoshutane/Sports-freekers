<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SignUp</title>
<link rel="stylesheet" href="css/signup.css">
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
						<li><a href="Abut.jsp">About</a>
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
		</div>
	</div>
	<div class="Signup">
		<h4>SignUp/Signin</h4>
		<form action="SignUpAction.jsp" class="Regform" method="post">
			<input type="text" name="name" placeholder="Enter Name" required>
			<input type="email" name="email" placeholder="Enter Email" required>
			<input type="number" name="phno" placeholder="Enter Mobile Number" required>
			<input type="password" name="password" placeholder="Enter Password" required>
			<input type="text" name="address" placeholder="Address" required>
			<input type="text" name="city" placeholder="City" required>
			<input type="text" name="state" placeholder="State" required>
			<input type="text" name="country" placeholder="Country" required><br>
			<input type="submit" value="SignUp" class="btn"> 
		</form>
		<div class='whysign'>
<%
String msg=request.getParameter("msg");
if("valid".equals(msg)){
%>
<h1>Successfully Registered</h1>
<%} %>
<%
if("invalid".equals(msg)){
%>
<h1>Some thing Went Wrong! Try Again !</h1>
<%} %>
    <h2>Online Shopping</h2>
    <p>The Online Shopping System is the application that allows the users to shop online without going to the shops to buy them.</p>
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


	
</body>
</html>