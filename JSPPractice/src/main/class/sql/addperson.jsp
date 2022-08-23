<%--
form만들기
이름
나이
email

action -> process.jsp
 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<title>Insert title here</title>
</head>
<body>
	<div class="row">
		<div class="col-xs-5 col-md-5 col-sm-5"></div>
		<div class="col-xs-2 col-md-2 col-sm-4">
			<form action="./process.jsp" method="post" class="form-inline">
				<div class="form-group">
					<label for="name">이름 :</label>
					<input type="text" name="name" required autocomplete="off" id="name" class="form-control">
					<label for="age">나이 :</label>
					<input type="number" name="age" required autocomplete="off" id="age" class="form-control">
					<label for="email">이메일 :</label>
					<input type="email" name="email" required autocomplete="off" id="email" class="form-control">
					<input type="submit" value="전송" class="btn btn-default">
				</div>
			</form>
		</div>
	</div>
</body>
</html>