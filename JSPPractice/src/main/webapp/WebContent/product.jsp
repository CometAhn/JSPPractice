<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="pack.Product"%>
<%@ page import="pack.ProductRepository"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>상품 상세 정보</title>
</head>
<body>
	<jsp:include page="menu.jsp" />
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">상품 정보</h1>
		</div>
	</div>

	<%
	String id = request.getParameter("id");
	ProductRepository dao = ProductRepository.getInstance();
	Product product = dao.getProductById(id);
	%>
	<%-- Product product = productDAO.getProductById(id); --%>
	<div class="container">
		<div class="row">
			<div class="col-md-5">
				<img alt="상품이미지" src="../images/<%=product.getFilename()%>" style="width: 100%">
			</div>
			<div class="col-md-6">
				<h3><%=product.getPname()%></h3>
				<p><%=product.getDescription()%></p>
				<p>
					<b> 상품 코드 : </b><span class="badge badge-danger"><%=product.getProductId()%></span>
				</p>
				<p>
					<b>제조사</b> :
					<%=product.getManufacturer()%>
				</p>
				<p>
					<b>분류</b> :
					<%=product.getCategory()%>
				</p>
				<p>
					<b>재고 수</b> :
					<%=product.getUnitsInStock()%>
				</p>
				<h4><%=product.getUnitPrice()%>원
				</h4>
				<p>
					<a href="#" class="btn btn-info">상품 주문 &raquo;</a>
				</p>
				<a href="./products.jsp" class="btn btn-secondary"> 상품목록 &raquo;</a>
			</div>
		</div>
		<hr>
	</div>
	<jsp:include page="./footer.jsp" />
</body>
</html>