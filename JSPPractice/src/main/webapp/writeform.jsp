<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ tablib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String name = (String) request.getParameter("name");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script type="text/javascript">
	function checkform() {
		if (!document.newwrite.name.value) {
			alert("성명을 입력하세요.");
			retrun
			false;
		}
		if (!document.newwrite.subject.value) {
			alert("제목을 입력하세요");
			retrun
			false;
		}
		if (!document.newwrite.content.value) {
			alert("내용을 입력하세요");
			retrun
			false;
		}
	}
</script>
<body>
	<jsp:include page="./menu.jsp" />
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">게시판</h1>
		</div>
	</div>

	<div class="container">
		<form name="newwrite" action="./boardwriteaction.do" class="form-hotizontal" method="post" onsubmit="return checkform()">
			<input name="id" type="hidden" class="form-control" value="&{sessionid}">
			<div class="form-group row">
				<label class="col-sm-2 control-label">성명</label>
				<div class="col-sm-3">
					<input name="name" type='text' class="form-control" value="<%=name%>" placeholder="name">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2 control-label">제목</label>
				<div class="col-sm-5">
					<input name="subject" type='text' class="form-control" placeholder="subject">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2 control-label">내용</label>
				<div class="col-sm-8">
					<textarea name="content" rows="5" cols="50" class="form-control" placeholder="content"></textarea>
				</div>
			</div>
			<div class="form-group row">
				<div class="col-sm-offset-2 col-sm-10">
					<input type="submit" class="btn btn-primary" value="등록"> <input type="reset" class="btn btn-secondary" value="취소">
				</div>
			</div>
		</form>
	</div>
</body>
</html>