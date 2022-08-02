<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Scripting Tag</title>
<!-- <%! int count1 = 0; %>  -->
</head>
<body>
	Page Count is:
	<%
		out.println(++count1);
	%>
	<br>
	Page Count is:
	<%
		out.println(myMethod(0));
	%>
	<%! public int myMethod(int count){
		return ++count;
	}
	
	%>
	<h2>Scripting Tag</h2>
	<%! int count = 3;
		
		String makeItLower(String data){
			return data.toLowerCase();
		}
	%>
	
	<%
		for(int i=0; i<=count;i++) {
			out.println("Java Server Pages " + i + ".<br>");
		}
	%>
	
	<%=makeItLower("Hello World") %>
		
</body>
</html>