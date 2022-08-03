<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Action tag</title>
</head>
<body>
	<h3>param 액션 태그</h3>
	<jsp:include page="param02_data.jsp" flush="false">
	<jsp:param value='<%=java.net.URLEncoder.encode("오늘의 날짜와 시각") %>' name="title" />
	<jsp:param value="<%=java.util.Calendar.getInstance().getTime() %>" name="date" />
	</jsp:include>
</body>
</html>