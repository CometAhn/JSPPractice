<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="person" class="pack.Person" scope="request"/>
	<jsp:setProperty property="id" name="person" value="20182005"/>
	<jsp:setProperty property="name" name="person" value="ȫ�浿"/>
	<p>���̵� :  <% out.println(person.getId()); %></p>	
	<p> �� �� :  <% out.println(person.getName()); %></p>	
</body>
</html>