<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Action tag</title>
</head>
<body>
	<h3>param �׼� �±�</h3>
	<jsp:include page="param02_data.jsp" flush="false">
	<jsp:param value='<%=java.net.URLEncoder.encode("������ ��¥�� �ð�") %>' name="title" />
	<jsp:param value="<%=java.util.Calendar.getInstance().getTime() %>" name="date" />
	</jsp:include>
</body>
</html>