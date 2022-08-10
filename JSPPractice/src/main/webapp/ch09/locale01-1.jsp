<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.Locale"%>
<%
	response.setContentType("text/html");
	response.setHeader("content-Language", "es");
	String title = "Espa&ntilde;ol";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><% out.print(title); %></title>
</head>
<body>
<p>Idioma : Espa&ntilde;ol</p>
<p>&iexcl;Hola Mundo!</p>
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