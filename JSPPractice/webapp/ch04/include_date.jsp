<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Action Tag</title>
</head>
<body>
	<p>오늘의날짜 및 시각</p>
	<p><%=(new java.util.Date()).toLocaleString() %></p>
</body>
</html>