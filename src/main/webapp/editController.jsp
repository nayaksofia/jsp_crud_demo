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
<%

    ProductDAO dao = new ProductDAO();
    Product product = new Product();
    
   
    product.setPid(Integer.parseInt(request.getParameter("pid")));
    product.setPname(request.getParameter("pname"));
    product.setCost(Float.parseFloat(request.getParameter("pcost")));
    
    if(dao.edit(product)>0){
    	response.sendRedirect("successUpdate.jsp");
    }

   
%>
</body>
</html>
