<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="Model.DAO, java.util.List, Model.Data" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Products</title>
    <link rel="stylesheet" href="css/Product.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@6.6.0/css/fontawesome.min.css"
        integrity="sha384-NvKbDTEnL+A8F/AA5Tc5kmMLSJHUO868P+lDtTpJIeQdGYaUIuLr4lVGOEA1OcMy" crossorigin="anonymous">
</head>
<body>
    <!-- Header -->
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
			</div>
		</div>

    <!-- Products Section -->
    <div class="small-container">
        <h2 class="title">Products</h2>
        <div class="row">
            <%
                try {
                    // Fetch all products from the database
                    List<Data> productList = DAO.fetchProducts();
                    int productCount = 0;
                    for (Data product : productList) {
                        if (productCount % 4 == 0 && productCount != 0) {
            %>
            </div>
            <div class="row">
            <%
                        }
            %>
            <div class="col-4">
                <!-- Product Image -->
                <img src="<%= product.getPhoto() %>" alt="<%= product.getPname() %>">
                <!-- Product Details -->
                <h4><%= product.getPname() %></h4>
                <p>Category: <%= product.getCategory() %></p>
                <p>Price: $<%= product.getPrice() %></p>
                <p>Status: <%= product.getActive().equals("1") ? "InActive" : "Active" %></p>
                <!-- Buttons -->
                <button class="btn">Buy Now &#8594;</button>
                <button class="btn">
                	<a href="addToCartAction.jsp?id=<%= product.getId() %>">Add to Cart</a>
                </button>
                
            </div>
            <%
                        productCount++;
                    }
                } catch (Exception e) {
                    e.printStackTrace();
            %>
            <p style="color: red;">Error fetching products. Please try again later.</p>
            <%
                }
            %>
        </div>
    </div>

    <!-- Footer -->
    <div class="footer">
        <div class="container">
            <div class="row-2">
                <div class="footer-col-1">
                    <h3>Download our App</h3>
                    <p>Download App for Android and iOS mobile phones.</p>
                    <div class="app-logo">
                        <img src="img/play-store.png">
                        <img src="img/app-store.png">
                    </div>
                </div>
                <div class="footer-col-2">
                    <img src="img/Logo.jpg">
                    <p>Our Purpose is to Sustainably Make the Pleasure and Benefits of Sports Accessible to Many.</p>
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
                    <h3>Follow Us</h3>
                    <ul>
                        <li>Facebook</li>
                        <li>Twitter</li>
                        <li>Instagram</li>
                        <li>YouTube</li>
                    </ul>
                </div>
            </div>
            <hr>
            <p class="Copyright">Copyright 2024 - Fitness-Freakers</p>
        </div>
    </div>

    <!-- JS for Toggle Menu -->
    <script>
        var MenuItems = document.getElementById("MenuItems");
        MenuItems.style.maxHeight = "0px";

        function menutoggle() {
            if (MenuItems.style.maxHeight == "0px") {
                MenuItems.style.maxHeight = "200px";
            } else {
                MenuItems.style.maxHeight = "0px";
            }
        }
    </script>
</body>
</html>
