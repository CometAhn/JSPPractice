<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Action tag</title>
</head>
<body>
	<h3>param �׼� �±�</h3>
	<jsp:forward page="param01_data.jsp">
		<jsp:param value="admin" name="id" />
		<jsp:param value='<%=java.net.URLEncoder.encode("������")%>' name="name" />
	</jsp:forward>
</body>
</html>