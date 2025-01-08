<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<!DOCTYPE html>
	<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial scale = 1.0">
		<title>Fittness-Freakers</title>
		<link rel="stylesheet" href="css/Style.css">
		<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap"
			rel="stylesheet">
		<link rel="stylesheet"
			href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@6.6.0/css/fontawesome.min.css"
			integrity="sha384-NvKbDTEnL+A8F/AA5Tc5kmMLSJHUO868P+lDtTpJIeQdGYaUIuLr4lVGOEA1OcMy" crossorigin="anonymous">
	</head>

	<body>
		<div class="Header">
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
							<li><a href="about.jsp">About</a>
							<li>
							<li><a href="Contact.jsp">Contact</a>
							<li>
							<li><a href="Account.jsp">Account</a>
							<li>
							<%String email=session.getAttribute("email").toString();%>
							<h2><a href=""><%out.println(email); %> <i class='fas fa-user-alt'></i></a></h2>
						</ul>
					</nav>
					<a href="CartAction.jsp"><img src="img/cart.png" width="30px" height="30px"
							style="margin-bottom:10px"></a>
							<img src= "img/menu.png" class="menu-icon" style="margin-bottom:10px" onclick="menutoggle()">
				</div>
				<div class="row">
					<div class="col-2 text-container">
						<h1>Elevate Your Workout to New Heights!</h1>
						<p>
							Transform your limits into possibilities! Every workout is a step
							towards a stronger you—embrace the sweat, the struggle, and the triumph.
							Let's elevate your fitness journey together!
						</p>
						<a href="" class="btn">Explore Now &#8594</a>
					</div>
					<div class="col-2">
						<img src="img/image1.png" alt="Fitness Freakers">
					</div>
				</div>
			</div>
		</div>
		</div>

		<!-- FEATURED CATEGORIES -->
		<div class="small-container">
			<div class="Categories">
				<div class="row">
					<div class="col-3">
						<img src="img/category-1.jpg">
					</div>
					<div class="col-3">
						<img src="img/category-2.jpg">
					</div>
					<div class="col-3">
						<img src="img/category-3.jpg">
					</div>
				</div>
			</div>
		</div>

		<!-- Featured Products -->

		<div class="small-container">
			<h2 class="title">Featured Products</h2>
			<div class="row">
				<div class="col-4">
					<img src="img/product-1.jpg">
					<h4>Red Printed T-Shirt</h4>
					<div class="rating">
						<i class="fa fa-star"></i>
						<i class="fa fa-star"></i>
						<i class="fa fa-star"></i>
						<i class="fa fa-star"></i>
						<i class="fa fa-star-o"></i>
					</div>
					<p>$70.00</p>
				</div>
				<div class="col-4">
					<img src="img/product-2.jpg">
					<h4>Red Printed T-Shirt</h4>
					<div class="rating">
						<i class="fa fa-star"></i>
						<i class="fa fa-star"></i>
						<i class="fa fa-star"></i>
						<i class="fa fa-star"></i>
						<i class="fa fa-star-o"></i>
					</div>
					<p>$70.00</p>
				</div>
				<div class="col-4">
					<img src="img/product-3.jpg">
					<h4>Red Printed T-Shirt</h4>
					<div class="rating">
						<i class="fa fa-star"></i>
						<i class="fa fa-star"></i>
						<i class="fa fa-star"></i>
						<i class="fa fa-star"></i>
						<i class="fa fa-star-o"></i>
					</div>
					<p>$70.00</p>
				</div>
				<div class="col-4">
					<img src="img/product-4.jpg">
					<h4>Red Printed T-Shirt</h4>
					<div class="rating">
						<i class="fa fa-star"></i>
						<i class="fa fa-star"></i>
						<i class="fa fa-star"></i>
						<i class="fa fa-star"></i>
						<i class="fa fa-star-o"></i>
					</div>
					<p>$70.00</p>
				</div>
			</div>

			<h2 class="title">Latest Products</h2>
			<div class="row">
				<div class="col-4">
					<img src="img/product-5.jpg">
					<h4>Red Printed T-Shirt</h4>
					<div class="rating">
						<i class="fa fa-star"></i>
						<i class="fa fa-star"></i>
						<i class="fa fa-star"></i>
						<i class="fa fa-star"></i>
						<i class="fa fa-star-o"></i>
					</div>
					<p>$70.00</p>
				</div>
				<div class="col-4">
					<img src="img/product-6.jpg">
					<h4>Red Printed T-Shirt</h4>
					<div class="rating">
						<i class="fa fa-star"></i>
						<i class="fa fa-star"></i>
						<i class="fa fa-star"></i>
						<i class="fa fa-star"></i>
						<i class="fa fa-star-o"></i>
					</div>
					<p>$70.00</p>
				</div>
				<div class="col-4">
					<img src="img/product-7.jpg">
					<h4>Red Printed T-Shirt</h4>
					<div class="rating">
						<i class="fa fa-star"></i>
						<i class="fa fa-star"></i>
						<i class="fa fa-star"></i>
						<i class="fa fa-star"></i>
						<i class="fa fa-star-o"></i>
					</div>
					<p>$70.00</p>
				</div>
				<div class="col-4">
					<img src="img/product-8.jpg">
					<h4>Red Printed T-Shirt</h4>
					<div class="rating">
						<i class="fa fa-star"></i>
						<i class="fa fa-star"></i>
						<i class="fa fa-star"></i>
						<i class="fa fa-star"></i>
						<i class="fa fa-star-o"></i>
					</div>
					<p>$70.00</p>
				</div>
			</div>
			<div class="row">
				<div class="col-4">
					<img src="img/product-9.jpg">
					<h4>Red Printed T-Shirt</h4>
					<div class="rating">
						<i class="fa fa-star"></i>
						<i class="fa fa-star"></i>
						<i class="fa fa-star"></i>
						<i class="fa fa-star"></i>
						<i class="fa fa-star-o"></i>
					</div>
					<p>$70.00</p>
				</div>
				<div class="col-4">
					<img src="img/product-10.jpg">
					<h4>Red Printed T-Shirt</h4>
					<div class="rating">
						<i class="fa fa-star"></i>
						<i class="fa fa-star"></i>
						<i class="fa fa-star"></i>
						<i class="fa fa-star"></i>
						<i class="fa fa-star-o"></i>
					</div>
					<p>$70.00</p>
				</div>
				<div class="col-4">
					<img src="img/product-11.jpg">
					<h4>Red Printed T-Shirt</h4>
					<div class="rating">
						<i class="fa fa-star"></i>
						<i class="fa fa-star"></i>
						<i class="fa fa-star"></i>
						<i class="fa fa-star"></i>
						<i class="fa fa-star-o"></i>
					</div>
					<p>$70.00</p>
				</div>
				<div class="col-4">
					<img src="img/product-12.jpg">
					<h4>Red Printed T-Shirt</h4>
					<div class="rating">
						<i class="fa fa-star"></i>
						<i class="fa fa-star"></i>
						<i class="fa fa-star"></i>
						<i class="fa fa-star"></i>
						<i class="fa fa-star-o"></i>
					</div>
					<p>$70.00</p>
				</div>
			</div>
		</div>

		<!-- offer -->
		<div class="offer">
			<div class="small-container">
				<div class="row">
					<div class="col-2">
						<img src="img/exclusive.png" class="offer-img">
					</div>
					<div class=col-2>
						<p>Exclusively Available on Fitness Freakeers</p>
						<h1>Smart Band 4</h1>
						<small>The Mi Smart Band 4 features a 39.9% larger
							(than Mi Band 3) AMOLED color full-touch display with
							adjustable brightness, so everything is clearly visible.</small>
						<a href="" class="btn">Buy Now &#8594;</a>
					</div>
				</div>
			</div>
		</div>

		<!-- testimonial -->

		<div class="testimonial">
			<div class="small-container">
				<div class="row">
					<div class="col-3">
						<i class="fa fa-quote-left"></i>
						<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestiae esse veritatis omnis aut
							architecto dolorum ratione obcaecati deleniti, ea mollitia a voluptatem necessitatibus,
							aliquid eveniet molestias culpa, tempora officiis provident eos minima quasi quas ducimus
							perspiciatis. Cum quia, cumque id aliquam quae similique sit velit debitis excepturi quod
							repellendus facilis.</p>
						<div class="rating">
							<i class="fa fa-star"></i>
							<i class="fa fa-star"></i>
							<i class="fa fa-star"></i>
							<i class="fa fa-star"></i>
							<i class="fa fa-star-o"></i>
						</div>
						<img src="img/user-1.png" >
						<h3>Sean Parker</h3>
					</div>
					<div class="col-3">
						<i class="fa fa-quote-left"></i>
						<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestiae esse veritatis omnis aut
							architecto dolorum ratione obcaecati deleniti, ea mollitia a voluptatem necessitatibus,
							aliquid eveniet molestias culpa, tempora officiis provident eos minima quasi quas ducimus
							perspiciatis. Cum quia, cumque id aliquam quae similique sit velit debitis excepturi quod
							repellendus facilis.</p>
						<div class="rating">
							<i class="fa fa-star"></i>
							<i class="fa fa-star"></i>
							<i class="fa fa-star"></i>
							<i class="fa fa-star"></i>
							<i class="fa fa-star-o"></i>
						</div>
						<img src="img/user-2.png">
						<h3>Mike smith</h3>
					</div>
					<div class="col-3">
						<i class="fa fa-quote-left"></i>
						<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestiae esse veritatis omnis aut
							architecto dolorum ratione obcaecati deleniti, ea mollitia a voluptatem necessitatibus,
							aliquid eveniet molestias culpa, tempora officiis provident eos minima quasi quas ducimus
							perspiciatis. Cum quia, cumque id aliquam quae similique sit velit debitis excepturi quod
							repellendus facilis.</p>
						<div class="rating">
							<i class="fa fa-star"></i>
							<i class="fa fa-star"></i>
							<i class="fa fa-star"></i>
							<i class="fa fa-star"></i>
							<i class="fa fa-star-o"></i>
						</div>
						<img src="img/user-3.png">
						<h3>Mabol joe</h3>
					</div>
				</div>
			</div>
		</div>

<!-- Brands -->
        <div class="brands">
			<div class="small-container">
				<div class="row-2">
					<div class="col-5">
						<img src="img/logo-godrej.png">
					</div>
					<div class="col-5">
						<img src="img/logo-oppo.png">
					</div>
					<div class="col-5">
						<img src="img/logo-coca-cola.png">
					</div>
					<div class="col-5">
						<img src="img/logo-paypal.png">
					</div>
					<div class="col-5">
						<img src="img/logo-philips.png">
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

	</body>

	</html>