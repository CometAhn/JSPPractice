<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	현재 시간 :
	<%=new java.util.Date()%>
	<br>
	6의 제곱 : <%= Math.pow(5, 2) %>
</body>
</html>