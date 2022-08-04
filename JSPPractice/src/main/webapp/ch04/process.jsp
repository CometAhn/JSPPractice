<%@page import="org.apache.catalina.filters.SetCharacterEncodingFilter"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<%
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");
	String password = request.getParameter("passwd");
	String password1 = "1234";
	String password2 = "1234";
	%>
	<p>
		아 이 디  :<%=id%>
	<p>
		비밀번호 : <%=password%>
	<p>
		test : <%=password1%>

	<%
	if (password == password1) {
	%>
	<p>비밀번호 같음</p>
	<%
	} else {
	%><p>비밀번호 다름</p>
	<%
	}
	%>

</body>
</html>