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
	%>
	<p>
		아 이 디  :<%=id%><br>
		비밀번호 : <%=password%><br>
		요청 정보 길이 : <%= request.getContentLength() %><br>
		클라이언트 전송 방식 : <%= request.getMethod() %><br>
		요청 URI : <%= request.getRequestURI() %><br>
		서버 이름 : <%= request.getServerName() %><br>
		서버 포드 : <%= request.getServerPort() %><br>


</body>
</html>