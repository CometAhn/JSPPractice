<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList, dto.product, dao.productrepository"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="./resources/css/bootstrap.min.css">
<%
String cartid = session.getId();
%>
<title>장바구니</title>
</head>
<body>
	<jsp:include page="./menu.jsp" />
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">장바구니</h1>
		</div>
	</div>
	<div class="container">
		<div class="row">
			<table style="width: 100%;">
				<tr>
					<td align="left"><a href="./deletecart.jsp?cartid=<%=cartid%>" class="btn btn-danger">삭제하기</a></td>
					<td align="right"><a href="./shippinginfo.jsp?cartid=<%=cartid%>" class="btn btn-danger">주문하기</a></td>
				</tr>
			</table>
		</div>
		<div style="padding-top: 50px">
			<table class="table table-hover">
				<tr>
					<th>상품</th>
					<th>가격</th>
					<th>수량</th>
					<th>소계</th>
					<th>비고</th>
				</tr>
				<%
				int sum = 0;
				ArrayList<product> cartlist = (ArrayList<product>) session.getAttribute("cartlist");
				if (cartlist == null)
					cartlist = new ArrayList<product>();
				for (int i = 0; i < cartlist.size(); i++) { // 상품 리스트 하나씩 출력하기
					product dto = cartlist.get(i);
					int total = dto.getUnitprice() * dto.getQuantity();
					sum += total;
				%>
				<tr>
					<td><%=dto.getProductid()%></td>
					<td><%=dto.getUnitprice()%></td>
					<td><%=dto.getQuantity()%></td>
					<td><%=total%></td>
					<td><a href="./removecart.jsp?id=<%=dto.getProductid()%>" class="badge badge-danger">삭제</a></td>
				</tr>
				<%
				}
				%>
				<tr>
					<th></th>
					<th></th>
					<th>총액</th>
					<th><%=sum%></th>
					<th></th>
				</tr>
			</table>
			<a href="./products.jsp" class="btn btn-secondary">&laquo; 쇼핑 계속하기</a>
		</div>
		<hr>
	</div>
	<jsp:include page="./footer.jsp" />
</body>
</html>