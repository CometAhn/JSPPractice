<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="dto.product, dao.productrepository"%>

<%
String id = request.getParameter("cartid");
if (id == null || id.trim().equals("")) {
	response.sendRedirect("./cart.jsp");
	return;
}

session.invalidate();

response.sendRedirect("./cart.jsp");
%>