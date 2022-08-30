<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.product, dao.productrepository"%>
<jsp:useBean id="productdao" class="dao.productrepository" scope="session" />
<!DOCTYPE html>
<html>
<head>
<%-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"> 인터넷 링크로 css처리 --%>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css">
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
			<%@include file="./dbconn.jsp"%>
			<%
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			String sql = "select * from product";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
			%>
			<%-- sql로 변경하므로 안 씀
			for (int i = 0; i < listofProducts.size(); i++) {
				product dto = listofProducts.get(i);
			--%>

			<div class="col-md-4">
				<img src="./resources/images/<%=rs.getString("p_filename")%>" style="width: 100%">
				<h3><%=rs.getString("p_name")%></h3>
				<p><%=rs.getString("p_description")%></p>
				<p><%=rs.getString("p_unitprice")%>원
				</p>
				<p>
					<a href="./product.jsp?id=<%=rs.getString("p_id")%>" class="btn btn-secondary">상세 정보 &raquo;</a>
				</p>
			</div>
			<%
			}

			// destoy
			if (rs != null)
			rs.close();
			if (pstmt != null)
			pstmt.close();
			if (conn != null)
			conn.close();
			%>
		</div>
		<hr>
	</div>
	<jsp:include page="./footer.jsp"></jsp:include>
</body>
</html>