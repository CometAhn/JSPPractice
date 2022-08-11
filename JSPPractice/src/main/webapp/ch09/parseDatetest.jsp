<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p><fmt:parseDate value="20180402230605" pattern="yyyyMMddHHmmss" /></p>
	<p><fmt:parseDate pattern="yyyyMMddHHmmss"> 20180402230605 </fmt:parseDate></p>
	<p><fmt:parseDate value="20180402230605" pattern="yyyyMMddHHmmss" var="date" scope="page"/></p>
	<p><fmt:formatDate value="${date}" pattern="yyyy-MM-dd HH:mm"/> </p>
</body>
</html>