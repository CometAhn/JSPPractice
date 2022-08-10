<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.Locale"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Internationalization</title>
</head>
<body>
	<%
	Locale locale = request.getLocale();
	String displayLanguage = locale.getDisplayLanguage();
	String language = locale.getLanguage();
	String displayCountry = locale.getDisplayCountry();
	String country = locale.getCountry();

	out.print("로케일 언어 : " + displayLanguage + "<br>");
	out.print("로케일 언어 코드 : " + language + "<br>");
	out.print("로케일 국가 : " + displayCountry + "<br>");
	out.print("로케일 국가 코드 : " + country + "<br>");
	%>
</body>
</html>