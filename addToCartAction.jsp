<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="Model.DAO"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add to Cart</title>
</head>
<body>
<%
    // Get the logged-in user's email from session
    String email = (String) session.getAttribute("email");
    if (email == null) {
        // Redirect to login page if user is not logged in
        response.sendRedirect("Account.jsp?msg=Please login to add items to your cart.");
        return;
    }

    // Get product details from request parameters
    String product_id = request.getParameter("id");
    String product_name = ""; // To store the product name
    int quantity = 1; // Default quantity is 1
    int product_price = 0;
    int product_total = 0;
    int cart_total = 0;
    boolean existsInCart = false;

    try {
        // Establish a database connection
        Connection con = DAO.getCon();
        Statement st = con.createStatement();

        // Fetch product details from the database
        ResultSet rs = st.executeQuery("SELECT * FROM product WHERE id='" + product_id + "'");
        if (rs.next()) {
            product_name = rs.getString("Pname"); // Fetch product name
            product_price = rs.getInt("Price"); // Fetch product price
            product_total = product_price; // Initial product total
        }

        // Check if the product is already in the user's cart
        ResultSet rs1 = st.executeQuery("SELECT * FROM cart WHERE product_id='" + product_id + "' AND email='" + email + "'");
        if (rs1.next()) {
            cart_total = rs1.getInt("product_total");
            cart_total += product_total; // Update total price
            quantity = rs1.getInt("quantity") + 1; // Increment quantity
            existsInCart = true;
        }

        // If product already exists in the cart, update the cart
        if (existsInCart) {
            String updateCartQuery = "UPDATE cart SET product_name=?, quantity=?, product_total=? WHERE product_id=? AND email=?";
            PreparedStatement pst = con.prepareStatement(updateCartQuery);
            pst.setString(1, product_name); // Update product name
            pst.setInt(2, quantity); // Update quantity
            pst.setInt(3, cart_total); // Update total price
            pst.setString(4, product_id); // Product ID
            pst.setString(5, email); // User's email
            pst.executeUpdate();

            response.sendRedirect("Products.jsp?msg=Product updated in cart");
        } else {
            // If product is not in the cart, insert a new record
            String insertCartQuery = "INSERT INTO cart(email, product_id, product_name, quantity, product_price, product_total) VALUES(?,?,?,?,?,?)";
            PreparedStatement pst = con.prepareStatement(insertCartQuery);
            pst.setString(1, email); // User's email
            pst.setString(2, product_id); // Product ID
            pst.setString(3, product_name); // Product name
            pst.setInt(4, quantity); // Quantity
            pst.setInt(5, product_price); // Product price
            pst.setInt(6, product_total); // Total price
            pst.executeUpdate(); 

            response.sendRedirect("Products.jsp?msg=Product added to cart");
        }
    } catch (Exception e) {
        e.printStackTrace();
        response.sendRedirect("Products.jsp?msg=Error adding product to cart");
    }
%>
</body>
</html>
