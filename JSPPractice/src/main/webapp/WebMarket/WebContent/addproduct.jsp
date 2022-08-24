<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<meta charset="UTF-8">
<title>상품 등록</title>
</head>
<body>
	<jsp:include page="./menu.jsp"></jsp:include>

	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">상품 등록</h1>
		</div>
	</div>
	<div class="container">
		<form action="./processaddproduct.jsp" class="form-horizontal" method="post">
			<div class="form-group row">
				<label class="col-sm-2" for="productid">상품 코드</label>
				<div class="col-sm-3">
					<input type="text" name="productid" class="form-control" id="productid">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2" for="name">상품명</label>
				<div class="col-sm-3">
					<input type="text" name="name" class="form-control" id="name">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2" for="unitprice">가격</label>
				<div class="col-sm-3">
					<input type="text" name="unitprice" class="form-control" id="unitprice">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2" for="description">상세 정보</label>
				<div class="col-sm-5">
					<textarea name="description" rows="2" cols="50" class="form-control" id="description"></textarea>
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2" for="manufacturer"">제조사</label>
				<div class="col-sm-3">
					<input type="text" name="manufacturer" class="form-control" id="manufacturer"">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2" for="category">분류</label>
				<div class="col-sm-3">
					<input type="text" name="category" class="form-control" id="category">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2" for="unitsinstock">재고수</label>
				<div class="col-sm-3">
					<input type="text" name="unitsinstock" class="form-control" id="unitsinstock">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">상태</label>
				<div class="col-sm-5">
					<input type="radio" name="condition" value="New ">신규 제품 <input type="radio" name="condition" value="Old ">중고 제품 <input type="radio" name="condition" value="Refurbished ">재생 제품
				</div>
			</div>
			<div class="form-group row">
				<div class="col-sm-offset-2 col-sm-10">
					<input type="submit" class="btn btn-primary" value="등록">
				</div>
			</div>
		</form>
	</div>

	<jsp:include page="./footer.jsp"></jsp:include>
</body>
</html>