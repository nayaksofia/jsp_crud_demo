<%@ page import="com.sofi.dao.ProductDAO" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Delete Product</title>
</head>
<body>
<%
    try {
        ProductDAO dao = new ProductDAO();
        int pid = Integer.parseInt(request.getParameter("id"));
        int result = dao.delete(pid);

        if (result > 0) {
            response.sendRedirect("successDelete.jsp"); // Redirect to success page if deletion is successful
        } else {
            out.println("Product not found or could not be deleted.");
        }
    } catch (NumberFormatException e) {
        out.println("Invalid Product ID.");
    } catch (Exception e) {
        out.println("An error occurred: " + e.getMessage());
    }
%>
</body>
</html>
