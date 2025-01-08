<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="Model.DAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="header.jsp" %>
<%@include file="footer.jsp" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>My Cart</title>
    <style>
        /* Styling code here */
    </style>
</head>
<body>
    <div class="container">
        <h1>My Cart</h1>

        <%
        String Email = (String) session.getAttribute("email");
        if (email == null) {
            response.sendRedirect("Account.jsp?msg=Please login to view your cart.");
            return;
        }

        int total = 0;
        int sno = 0;

        try {
            Connection con = DAO.getCon();
            Statement st = con.createStatement();

            // Calculate the total cost
            ResultSet rs1 = st.executeQuery(
                "SELECT SUM(product_total) AS total FROM cart WHERE email='" + email + "' AND address IS NULL"
            );
            if (rs1.next()) {
                total = rs1.getInt("total");
            }

            // Fetch cart details
            ResultSet rs = st.executeQuery(
                "SELECT DISTINCT product.name, product.category, product.price, cart.quantity, cart.product_total, cart.product_id " +
                "FROM product " +
                "INNER JOIN cart ON product.id = cart.product_id " +
                "WHERE cart.email='" + email + "' AND cart.address IS NULL"
            );

            if (!rs.isBeforeFirst()) {
        %>
                <p>Your cart is empty. <a href="Products.jsp">Continue shopping</a>.</p>
        <%
            } else {
        %>
                <table>
                    <thead>
                        <tr>
                            <th>S.No</th>
                            <th>Product Name</th>
                            <th>Category</th>
                            <th>Price</th>
                            <th>Quantity</th>
                            <th>Sub Total</th>
                            <th>Actions</th>
                        </tr>
                    </thead>
                    <tbody>
        <%
                while (rs.next()) {
                    sno++;
                    String productName = rs.getString("name");
                    String category = rs.getString("category");
                    int price = rs.getInt("price");
                    int quantity = rs.getInt("quantity");
                    int productTotal = rs.getInt("product_total");
                    String productId = rs.getString("product_id");
        %>
                        <tr>
                            <td><%= sno %></td>
                            <td><%= productName %></td>
                            <td><%= category %></td>
                            <td><%= price %></td>
                            <td>
                                <a href="incDecQuantityAction.jsp?id=<%= productId %>&quantity=inc">+</a>
                                <%= quantity %>
                                <a href="incDecQuantityAction.jsp?id=<%= productId %>&quantity=dec">-</a>
                            </td>
                            <td><%= productTotal %></td>
                            <td>
                                <a href="removeFromCart.jsp?id=<%= productId %>">Remove</a>
                            </td>
                        </tr>
        <%
                }
        %>
                    </tbody>
                </table>
                <div>Total: <%= total %></div>
                <div>
                    <a href="addressPaymentForOrder.jsp">Proceed to Checkout</a>
                </div>
        <%
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        %>
    </div>
</body>
</html>
