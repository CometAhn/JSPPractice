<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import="java.util.ArrayList, java.net.URLDecoder, dto.product, dao.productrepository"%>
<%
request.setCharacterEncoding("UTF-8");

String cartid = session.getId();

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
	shipping_cartid = URLDecoder.decode(thiscookie.getValue(), "utf-8");
		if (n.equals("shipping_name"))
	shipping_name = URLDecoder.decode(thiscookie.getValue(), "utf-8");
		if (n.equals("shipping_shippingdate"))
	shipping_shippingdate = URLDecoder.decode(thiscookie.getValue(), "utf-8");
		if (n.equals("shipping_country"))
	shipping_country = URLDecoder.decode(thiscookie.getValue(), "utf-8");
		if (n.equals("shipping_zipcode"))
	shipping_zipcode = URLDecoder.decode(thiscookie.getValue(), "utf-8");
		if (n.equals("shipping_addressname"))
	shipping_addressname = URLDecoder.decode(thiscookie.getValue(), "utf-8");

	}
}
%>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="./resources/css/bootstrap.min.css">
<title>주문 정보</title>
</head>
<body>
	<jsp:include page="./menu.jsp" />
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">주문 정보</h1>
		</div>
	</div>

	<div class="container col-8 alert alert-info">
		<div class="tetxt-center">
			<h1>영수증</h1>
		</div>

		<div class="row justify-content-between">
			<div class="col-4" align="left">
				<strong>배송주소</strong> <br> 성명 :
				<%
 out.println(shipping_name);
 %><br> 우편번호 :
				<%
 out.println(shipping_zipcode);
 %><br> 주소 :
				<%
 out.println(shipping_addressname);
 %>(<%
 out.println(shipping_country);
 %>)<br>
			</div>
			<div class="col-4" align="right">
				<p>
					<em>배송일 : <%
					out.println(shipping_shippingdate);
					%></em>
				</p>
			</div>
		</div>
		<div>
			<table calss="table table-hover">
				<tr>
					<th>도서</th>
					<th>#</th>
					<th>가격</th>
					<th>소계</th>
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
					<td class="text-center"><em><%=dto.getPname()%></em></td>
					<td class="text-center"><%=dto.getQuantity()%></td>
					<td class="text-center"><%=dto.getUnitprice()%></td>
					<td class="text-center"><%=total%>원</td>
				</tr>
				<%
				}
				%>
				<tr>
					<td></td>
					<td></td>
					<td class="text-right"><strong>총액 : </strong></td>
					<td class="text-center text-danger"><strong><%=sum%>원</strong></td>
				</tr>
			</table>

			<a href="./shippinginfo.jsp?cartid=<%=shipping_cartid%>" class="btn btn-secondary" role="button"> 이전 </a> <a href="./thankcustomer.jsp" class="btn btn-success"> 주문완료 </a> <a href="./checkoutcancelled.jsp" class="btn btn-secondary" role="button"> 취소 </a>
		</div>
	</div>

</body>
</html>