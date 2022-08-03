<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Action tag</title>
</head>
<body>
	<p>
		아이디 :
		<%= request.getParameter("id") %>
	</p>
	<%
	String name = request.getParameter("name");
	%>
	<p>
		이름 :
		<%=java.net.URLDecoder.decode(name) %>
	</p>
</body>
</html>