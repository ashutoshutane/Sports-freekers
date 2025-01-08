<%@page import="java.sql.ResultSet"%>
<%@page import="com.mysql.cj.xdevapi.Result"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="Model.DAO"%>
<%@include file="adminHeader.jsp" %>
<html>
<head>
<link rel="stylesheet" href="../css/addNewProduct-style.css">
<title>Add New Product</title>
</head>
<body>
<%
String msg = request.getParameter("msg");
if ("done".equals(msg)) {
%>
<h3 class="alert">Product Added Successfully!</h3>
<% } else if ("wrong".equals(msg)) { %>
<h3 class="alert">Something went wrong! Try Again!</h3>
<% } %>

<%
int id = DAO.productId();
%>
<form action="addNewProductAction.jsp" method="post" enctype="multipart/form-data">
<h3 style="color: yellow;">Product ID: <% out.println(id); %> </h3>

<input type="hidden" name="id" value="<% out.println(id); %>">

<div class="left-div">
 <h3>Enter Name</h3>
 <input class="input-style" type="text" name="name" placeholder="Enter Name" required>
<hr>
</div>

<div class="right-div">
<h3>Enter Category</h3>
 <input class="input-style" type="text" name="category" placeholder="Enter Category" required>
<hr>
</div>

<div class="left-div">
<h3>Enter Price</h3>
 <input class="input-style" type="number" name="price" placeholder="Enter Price" required>
<hr>
</div>

<div class="right-div">
<h3>Active</h3>
   <select class="input-style" name="active">
   	<option value="Yes">Yes</option>
   	<option value="No">No</option>
   </select>
<hr>
</div>

<div class="left-div">
<h3>Upload Product Photo</h3>
 <input class="input-style" type="file" name="photo" required>
<hr>
</div>

<button class="button">Save<i class='far fa-arrow-alt-circle-right'></i></button>
</form>
</body>
<br><br><br>
</html>
