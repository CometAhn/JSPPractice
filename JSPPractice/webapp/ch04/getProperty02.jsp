<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="person" class="pack.Person" />
	<jsp:setProperty property="id" name="person" value="20182005"/>
	<jsp:setProperty property="name" name="person" value="ȫ�浿"/>
	<p>
		���̵� :
		<jsp:getProperty name="person" property="id" /></p>
	<p>
		�� �� :
		<jsp:getProperty name="person" property="name" /></p>
</body>
</html>