<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Internationalization</title>
</head>
<body>
	<fmt:bundle basename="resourceBundle.message">
		<p>
			<fmt:message key="name" />
		</p>
		<fmt:message key="hello" var="msg" />
		<p>${msg}</p>
	</fmt:bundle>
</body>
</html>