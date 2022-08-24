<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.product, dao.productrepository"%>
<jsp:useBean id="productdao" class="dao.productrepository" scope="session" />
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<meta charset="UTF-8">
<title>상품 목록</title>
</head>
<body>
	<jsp:include page="./menu.jsp" />
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">상품 목록</h1>
		</div>
	</div>
	<%
	// 이전에 쓰던 거
	// ArrayList<product> listofProducts = productdao.getallproducts();

	productrepository dao = productrepository.getinstance();
	ArrayList<product> listofProducts = dao.getallproducts();
	%>
	<div class="container">
		<div class="row" align="center">
			<%
			for (int i = 0; i < listofProducts.size(); i++) {
				product dto = listofProducts.get(i);
			%>

			<div class="col-md-4">
				<h3><%=dto.getPname()%></h3>
				<p><%=dto.getDescription()%></p>
				<p><%=dto.getUnitprice()%>원
				</p>
				<p>
					<a href="./product.jsp?id=<%=dto.getProductid()%>" class="btn btn-secondary">상세 정보 &raquo;</a>
				</p>
			</div>
			<%
			}
			%>
		</div>
		<hr>
	</div>
	<jsp:include page="./footer.jsp"></jsp:include>
</body>
</html>