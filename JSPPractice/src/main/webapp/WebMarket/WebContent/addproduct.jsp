<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<%-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"> 인터넷 링크로 css처리 --%>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css">
<meta charset="UTF-8">
<title>상품 등록</title>
</head>
<body>
	<fmt:setLocale value='<%=request.getParameter("language") %>'/>
	<fmt:bundle basename="bundle.message">
	<jsp:include page="./menu.jsp" />

	<div class="jumbotron">
		<div class="container">
			<!-- <h1 class="display-3">상품 등록</h1>  -->
			<h1 class="display-3">
				<fmt:message key="title" />
			</h1>
		</div>
	</div>
		<div class="container">
			<div class="text-right">
				<a href="?language=ko">Korean</a> | <a href="?language=en">English</a>
				<a href="./logout.jsp" class="btn btn-sm btn-success pull-right">logout</a>
			</div>
			<form action="./processaddproduct.jsp" class="form-horizontal" method="post" enctype="multipart/form-data">
				<div class="form-group row">
					<!-- label class="col-sm-2" for="productid">상품 코드</label>  -->
					<label class="col-sm-2" for="productid"><fmt:message key="productid" /></label>
					<div class="col-sm-3">
						<input type="text" name="productid" class="form-control" id="productid">
					</div>
				</div>
				<div class="form-group row">
					<!-- <label class="col-sm-2" for="name">상품명</label>  -->
					<label class="col-sm-2" for="name"><fmt:message key="pname" /></label>
					<div class="col-sm-3">
						<input type="text" name="name" class="form-control" id="name">
					</div>
				</div>
				<div class="form-group row">
					<!-- <label class="col-sm-2" for="unitprice">가격</label>  -->
					<label class="col-sm-2" for="unitprice"><fmt:message key="unitprice" /></label>
					<div class="col-sm-3">
						<input type="text" name="unitprice" class="form-control" id="unitprice">
					</div>
				</div>
				<div class="form-group row">
					<!-- <label class="col-sm-2" for="description">상세 정보</label> -->
					<label class="col-sm-2" for="description"><fmt:message key="description" /></label>
					<div class="col-sm-5">
						<textarea name="description" rows="2" cols="50" class="form-control" id="description"></textarea>
					</div>
				</div>
				<div class="form-group row">
					<!-- <label class="col-sm-2" for="manufacturer"">제조사</label> -->
					<label class="col-sm-2" for="manufacturer""><fmt:message key="manufacturer" /></label>
					<div class="col-sm-3">
						<input type="text" name="manufacturer" class="form-control" id="manufacturer"">
					</div>
				</div>
				<div class="form-group row">
					<!-- <label class="col-sm-2" for="category">분류</label> -->
					<label class="col-sm-2" for="category"><fmt:message key="category" /></label>
					<div class="col-sm-3">
						<input type="text" name="category" class="form-control" id="category">
					</div>
				</div>
				<div class="form-group row">
					<!-- <label class="col-sm-2" for="unitsinstock">재고수</label> -->
					<label class="col-sm-2" for="unitsinstock"><fmt:message key="unitsinstock" /></label>
					<div class="col-sm-3">
						<input type="text" name="unitsinstock" class="form-control" id="unitsinstock">
					</div>
				</div>
				<div class="form-group row">
					<!-- <label class="col-sm-2">상태</label> -->
					<label class="col-sm-2"><fmt:message key="condition" /></label>
					<div class="col-sm-5">
						<!-- <input type="radio" name="condition" value="New " id="new"><label for="new">신규 제품</label> <input type="radio" name="condition" value="Old " id="old"><label for="old">중고 제품</label> <input type="radio" name="condition" value="Refurbished " id="re"><label for="re">재생 제품</label> -->
						<input type="radio" name="condition" value="New " id="new"><label for="new"><fmt:message key="condition_new" /></label> <input type="radio" name="condition" value="Old " id="old"><label for="old"><fmt:message key="condition_old" /></label> <input type="radio" name="condition" value="Refurbished " id="re"><label for="re"><fmt:message key="condition_refurbished" /></label>
					</div>
				</div>
				<div class="form-group row">
					<!-- <label class="col-sm-2" for="image">이미지</label> -->
					<label class="col-sm-2" for="image"><fmt:message key="productimage" /></label>
					<div class="col-sm-5">
						<input type="file" name="productimage" class="form-control" id="image">
					</div>
				</div>
				<div class="form-group row">
					<div class="col-sm-offset-2 col-sm-10">
						<!-- <input type="submit" class="btn btn-primary" value="등록"> -->
						<input type="submit" class="btn btn-primary" value="<fmt:message key="button" />">
	</fmt:bundle>
				</div>
			</div>
		</form>
	</div>
	

	<jsp:include page="./footer.jsp"></jsp:include>
</body>
</html>