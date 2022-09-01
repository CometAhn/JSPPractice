<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css">
<meta charset="UTF-8">
<title>주문 완료</title>
</head>
<body>
	<%
	String shipping_cartid = "";
	String shipping_name = "";
	String shipping_shippingdate = "";
	String shipping_country = "";
	String shipping_zipcode = "";
	String shipping_addressname = "";

	Cookie[] cookies = request.getCookies();

	if (cookies != null) {
		for (int i = 0; i < cookies.length; i++) {
			Cookie thiscookie = cookies[i];
			String n = thiscookie.getName();
			if (n.equals("shipping_cartid"))
		shipping_cartid = URLDecoder.decode((thiscookie.getValue()), "utf-8");
			if (n.equals("shipping_shippingdate"))
		shipping_shippingdate = URLDecoder.decode((thiscookie.getValue()), "utf-8");
		}
	}
	%>
	<jsp:include page="./menu.jsp" />

	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">주문 완료</h1>
		</div>
	</div>
	<div class="container">
		<h2 class="alert alert-danger">주문해주셔서 감사함미당!</h2>
		<p>
			주문은<%
		out.println(shipping_shippingdate);
		%>에 배송될 예정임미당!
		</p>
		<p>
			주문 번호 :
			<%
		out.println(shipping_cartid);
		%>
		</p>
	</div>
	<div class="container">
		<p>
			<a href="./products.jsp" class="btn btn-secondary">&laquo; 상품 목록</a>
		</p>
	</div>
</body>
</html>
<%
session.invalidate();

for (int i = 0; i < cookies.length; i++) {
	Cookie thiscookie = cookies[i];
	String n = thiscookie.getName();
	if (n.equals("shipping_cartid"))
		thiscookie.setMaxAge(0);
	if (n.equals("shipping_name"))
		thiscookie.setMaxAge(0);
	if (n.equals("shipping_shippingdate"))
		thiscookie.setMaxAge(0);
	if (n.equals("shipping_country"))
		thiscookie.setMaxAge(0);
	if (n.equals("shipping_zipcode"))
		thiscookie.setMaxAge(0);
	if (n.equals("shipping_addressname"))
		thiscookie.setMaxAge(0);

	response.addCookie(thiscookie);
}
%>