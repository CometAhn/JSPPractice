<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<meta charset="UTF-8">
<title>상품 등록</title>
</head>
<body>
	<jsp:include page="menu.jsp" />
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">상품 등록</h1>
		</div>
	</div>
	<div class="container">
		<form name="newProduct" action="./processAddProduct.jsp" class= form-horizontal" method="get">
			<label class="col-sm-2">상품코드</label>
			<div class="col-sm-3">
				<input type="text" name="productId" class="form-control">
			</div>
			<div class-"form-group row">
				<label class="col-sm-2">상품명</label>
				<div class="col-sm-3">
					<input type="txet" name="name" class="form-control">
				</div>
			</div>
			<div class-"form-group row">
				<label class="col-sm-2">가격</label>
				<div class="col-sm-3">
					<input type="txet" name="unitPrice" class="form-control">
				</div>
			</div>
			<div class-"form-group row">
				<label class="col-sm-2">상세 정보</label>
				<div class="col-sm-3">
					<input type="txet" name="description" class="form-control">
				</div>
			</div>
			<div class-"form-group row">
				<label class="col-sm-2">제조사</label>
				<div class="col-sm-3">
					<input type="txet" name="manufacturer" class="form-control">
				</div>
			</div>
			<div class-"form-group row">
				<label class="col-sm-2">분류</label>
				<div class="col-sm-3">
					<input type="txet" name="category" class="form-control">
				</div>
			</div>
			<div class-"form-group row">
				<label class="col-sm-2">재고 수</label>
				<div class="col-sm-3">
					<input type="txet" name="unitsInStock" class="form-control">
				</div>
			</div>
			<div class-"form-group row">
				<label class="col-sm-2">상태</label>
				<div class="col-sm-3">
					<label><input type="radio" name="condition" class="New">신규 제품</label><label><input type="radio" name="condition" class="Old">중고 제품</label><label><input type="radio" name="condition" class="Refurbished">재생 제품</label>
				</div>
			</div>
			<div class="form-group row">
				<div class="col-sm-offset-2 col-sm-10">
					<input type="submit" class="btn btn-primary" value="등록">
				</div>
			</div>
		</form>
	</div>


</body>
</html>