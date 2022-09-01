<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.util.Date"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<meta charset="UTF-8">
<title>Welcome</title>
</head>
<body>
	<%-- 상단 내비게이션 --%>
	<%@ include file="./menu.jsp"%>
	<%-- 변수 및 함수 선언문 태그  --%>
	<%!String greeting = "웹쇼핑몰에 오신 것을 환영합니다.";
	String tagline = "Welcome to Web Market!";%>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">
				<%=greeting%>
			</h1>
		</div>
	</div>

	<%-- 변수 출력 태그  --%>
	<main role="main">
		<div class="container">
			<div class="text-center">
				<h3>
					<%=tagline%>
				</h3>
				<%
				Date day = new java.util.Date(); // java.util.Date imort해야 함.

				/* 변수 선언 */
				String am_pm; // 지역 변수(특정 함수 안에 String am_pm이 있다고 판단.)
				int hour;
				int minute;
				int second;

				/* 변수 초기화 */
				hour = day.getHours();
				minute = day.getMinutes();
				second = day.getSeconds();

				if (hour / 12 == 0) {
					am_pm = "AM";
				} else {
					am_pm = "PM";
					hour -= 12;
				}

				/* 변수 + "문자" + 변수 + "문자" */
				String CT = hour + ":" + minute + ":" + second + " " + am_pm;

				/* HTML에 출력 */
				out.println("현재 접속 시간 : " + CT + "\n");
				%>
			</div>
			<hr>
		</div>
	</main>

	<%-- footer --%>
	<%@ include file="./footer.jsp"%>

</body>
</html>