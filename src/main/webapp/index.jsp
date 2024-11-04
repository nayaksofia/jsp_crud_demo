<%@page import="com.sofi.dao.ProductDAO"%>
<!-- Import the Package For Creating Object of Class  -->
<%@page import="com.sofi.pojo.Product"%>
<!-- For Product Class -->
<%@page import="java.util.*"%>
<!-- For List -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Product List</title>
</head>
<body>

    <form action="addproduct.jsp">
        <input type="submit" value="Add Product">
    </form>

    <h1>
        <i>List of Products</i>
    </h1>

    <table border="1">
        <tr>
            <th>Product ID</th>
            <th>Product Name</th>
            <th>Product Cost</th>
            <th>Edit</th>
            <th>Delete</th>
        </tr>

        <%
        ProductDAO dao = new ProductDAO();
        List<Product> list = dao.displayProduct();
        for (Product p : list) {
        %>
        <tr>
            <td><%= p.getPid() %></td>
            <td><%= p.getPname() %></td>
            <td><%= p.getCost() %></td>
            <td><a href="edit.jsp?id=<%= p.getPid() %>">Edit </a></td>
            <td><a href="deleteController.jsp?id=<%= p.getPid() %>">Delete </a></td>
        </tr>
        <% } %>

    </table>

</body>
</html>
