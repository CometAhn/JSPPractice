<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<nav class="navbar navbar-expand navbar-dark bg-dark">
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<%
	String sessionId = (String) session.getAttribute("sessionId");
	%>
	<div class="container">
		<div class="navbar-header">
			<a class="navbar-brand" href="/jwbook/WebMarket/welcome.jsp">Home</a>
			<a class="navbar-brand" href="/jwbook/WebMarket/products.jsp">Product List</a>
			<a class="navbar-brand" href="/jwbook/WebMarket/addproduct.jsp">Add Product</a>
			<a class="navbar-brand" href="/jwbook/WebMarket/cart.jsp">Cart</a>
			<a class="navbar-brand" href="<c:url value="/boardlistaction.do?pagenum=1"/>">Board</a>
		</div>
		<div>
			<ul class="navbar-navbar mr-auto">
				<c:choose>
					<c:when test="${empty sessionId}">
						<li class="nav-item"><a class="nav-link" href='<c:url value="/WebMarket/member/loginMember.jsp"/>'>로그인</a></li>
						<li class="nav-item"><a class="nav-link" href='<c:url value="/WebMarket/member/addMember.jsp"/>'>회원 가입</a></li>
					</c:when>
					<c:otherwise>
					<li style="padding-top:7px; color:white;">[<%=sessionId%>님]</li>
						<li class="nav-item"><a class="nav-link" href='<c:url value="/WebMarket/member/logoutMember.jsp"/>'>로그아웃</a></li>
						<li class="nav-item"><a class="nav-link" href='<c:url value="/WebMarket/member/updateMember.jsp"/>'>회원 수정</a></li>
					</c:otherwise>
				</c:choose>
			</ul>
		</div>
	</div>
</nav>