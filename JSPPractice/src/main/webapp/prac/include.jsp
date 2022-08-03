<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import="java.util.Calendar"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="header.jsp"%>
	<%
	Calendar cal = Calendar.getInstance();
	%>
	<%
	out.print("현재 시간 "+cal.get(Calendar.AM_PM)+":"+cal.get(Calendar.MINUTE)+":"+cal.get(Calendar.SECOND));
	%>

</body>
</html>