<%@ page import="com.sofi.dao.ProductDAO" %>
<%@ page import="com.sofi.pojo.Product" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Product</title>
</head>
<body>
<h1>Edit Product</h1>

<form action="editController.jsp">
   <input type="hidden" name="pid" value="<%=request.getParameter("id") %>"> <br>
    Product Name: <input type="text" name="pname" ><br>
    Product Cost: <input type="text" name="pcost" ><br>

    <input type="submit" value="Update Product"><br>
</form>

</body>
</html>
