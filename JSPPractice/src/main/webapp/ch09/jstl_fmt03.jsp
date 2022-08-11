<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Internationalization</title>
</head>
<body>
	<jsp:useBean id="now" class="java.util.Date"/>
	<p><fmt:formatDate value="${now}" type="date"/></p>
	<p><fmt:formatDate value="${now}" type="time"/></p>
	<p><fmt:formatDate value="${now}" type="both"/></p>
	<p><fmt:formatDate value="${now}" type="both" dateStyle="default" timeStyle="default"/></p>
	<p><fmt:formatDate value="${now}" type="both" dateStyle="short" timeStyle="short"/></p>
	<p><fmt:formatDate value="${now}" type="both" dateStyle="medium" timeStyle="medium"/></p>
	<p><fmt:formatDate value="${now}" type="both" dateStyle="long" timeStyle="long"/></p>
	<p><fmt:formatDate value="${now}" type="both" dateStyle="full" timeStyle="full"/></p>
	<p><fmt:formatDate value="${now}" type="both" pattern="yyyy년M월dd일 HH시 mm분ss초ssss EE"/></p>

	
	<fmt:parseDate value="20180402230605" pattern="yyyyMMddHHmmss"/>
	<p><fmt:parseDate value="20180402230605" pattern="yyyMMddHHmmss"/></p>
	<p><fmt:parseDate pattern="yyyMMddHHmmss"> 20180402230605 </fmt:parseDate></p>
	<p><fmt:parseDate value="20180402230605" pattern="yyyMMddHHmmss" var="date" scope="page"/></p>
	<p><fmt:parseDate value="${date}" pattern="yyyy-MM-dd HH:mm"/></p>
</body>
</html>