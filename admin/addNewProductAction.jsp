<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ page import="Model.DAO, Model.Data, java.io.File, jakarta.servlet.http.Part" %>
<%@ page import="jakarta.servlet.annotation.MultipartConfig" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Add New Product Action</title>
</head>
<body>
<%
    try {
        // Retrieve product details from the form
        String id = request.getParameter("id");
        String pname = request.getParameter("name");
        String category = request.getParameter("category");
        String price = request.getParameter("price");
        String active = request.getParameter("active");

        // Debugging information
        System.out.println("Product ID: " + id);
        System.out.println("Product Name: " + pname);
        System.out.println("Category: " + category);
        System.out.println("Price: " + price);
        System.out.println("Active: " + active);

        // Handle file upload
        Part photoPart = request.getPart("photo");
        if (photoPart == null) {
            throw new Exception("No file selected for upload.");
        }

        String fileName = photoPart.getSubmittedFileName();
        if (fileName == null || fileName.trim().isEmpty()) {
            throw new Exception("File name is empty.");
        }

        // Debugging information for file
        System.out.println("File Name: " + fileName);

        // Define the upload path (webapp/img/Products directory)
        String uploadPath = getServletContext().getRealPath("/") + "img" + File.separator + "Products";
        File uploadDir = new File(uploadPath);

        // Ensure the directory exists
        if (!uploadDir.exists()) {
            boolean dirCreated = uploadDir.mkdirs();
            System.out.println("Upload directory created: " + dirCreated);
        }

        // Construct file path
        String filePath = uploadPath + File.separator + fileName;
        System.out.println("File Path: " + filePath);

        // Save the file
        try {
            photoPart.write(filePath);
            System.out.println("File successfully saved at: " + filePath);
        } catch (Exception e) {
            throw new Exception("Failed to save the file: " + e.getMessage());
        }

        // Verify file existence
        File savedFile = new File(filePath);
        if (!savedFile.exists()) {
            throw new Exception("File was not saved in the directory.");
        }

        // Set the relative path to the image (for database storage)
        String imagePath = "img/Products/" + fileName;

        // Initialize the Data object and set its properties
        Data d = new Data();
        d.setId(id);
        d.setPname(pname);
        d.setCategory(category);
        d.setPrice(price);
        d.setActive(active);
        d.setPhoto(imagePath);

        // Call DAO to add the product to the database
        int res = DAO.addProduct(d);

        // Redirect based on the result
        if (res > 0) {
            System.out.println("Product added successfully.");
            response.sendRedirect("addNewProduct.jsp?msg=done");
        } else {
            System.out.println("Failed to add product to the database.");
            response.sendRedirect("addNewProduct.jsp?msg=error");
        }
    } catch (Exception e) {
        e.printStackTrace();
        System.out.println("Exception occurred: " + e.getMessage());
        response.sendRedirect("addNewProduct.jsp?msg=exception");
    }
%>
</body>
</html>
