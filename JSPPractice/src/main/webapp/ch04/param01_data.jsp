<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Action tag</title>
</head>
<body>
	<p>
		���̵� :
		<%= request.getParameter("id") %>
	</p>
	<%
	String name = request.getParameter("name");
	%>
	<p>
		�̸� :
		<%=java.net.URLDecosder.decode(name) %>
	</p>
</body>
</html>