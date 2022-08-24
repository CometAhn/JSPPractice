<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="dto.product, dao.productrepository"%>
<jsp:useBean id="productdao" class="dao.productrepository" scope="session" />
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<meta charset="UTF-8">
<title>상품 상세 정보</title>
</head>
<body>
	<jsp:include page="./menu.jsp" />

	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">상품 정보</h1>
		</div>
	</div>
	<%
	String id = request.getParameter("id");
	// 이전에 쓰던 거
	// product dto = productdao.getproductbyid(id);

	productrepository dao = productrepository.getinstance();
	product dto = dao.getproductbyid(id);
	%>
	<div class="container">
		<div class="row">
			<div class="col-md-6">
				<h3><%=dto.getPname()%></h3>
				<p><%=dto.getDescription()%></p>
				<p>
					<b>상품 코드 : </b><span class="badge badge-danger"><%=dto.getProductid()%></span>
				</p>
				<p> <b>제조사</b> : <%=dto.getManufacturer()%></p>
				<p>	<b>분류</b> : <%=dto.getCategory()%></p>
				<p>	<b>재고 수</b> : <%=dto.getUnitsinstock()%></p>
				<h4><%=dto.getUnitprice()%>원</h4>
				<p>
					<a href="#" class="btn btn-info">상품 주문 &raquo;</a> <a href="./products.jsp" class="btn btn-secondary">상품 목록 &raquo;</a>
				</p>
			</div>
		</div>
		<hr>
	</div>

	<jsp:include page="./footer.jsp" />
</body>
</html>