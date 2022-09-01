<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList, dto.product, dao.productrepository"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	// 1. reqeust 값/유효성
	String id = request.getParameter("id");

	// 1-1. 유효성 검사. 아이디가 비어 있으면 products.jsp로 돌아감.
	if (id == null || id.trim().equals("")) {
		response.sendRedirect("./products.jsp");
		return;
	}
	// 2.dao 연결, dto 검색 메소드/ 유효성
	productrepository dao = productrepository.getinstance();
	product dto = dao.getproductbyid(id);

	if (dto == null) {
		response.sendRedirect("./exceptionnoproductid.jsp");
	}

	ArrayList<product> goodslist = dao.getallproducts(); // 3, arraaylist 전체 값, dao에 있는 arraylist를 통째로 들고옴
	product goods = new product(); // 4. 새로운 dto 생성

	// 5. arraylist에서 id와 일치하는 dto를 찾아와서 goods에 담는다.
	for (int i = 0; i < goodslist.size(); i++) {
		goods = goodslist.get(i);
		if (goods.getProductid().equals(id)) {
			break;
		}
	}

	// 6. session에서 cartlist 검색
	ArrayList<product> list = (ArrayList<product>) session.getAttribute("cartlist");

	// 리스트가 없다면 카트리스트 생성.
	if (list == null) {
		list = new ArrayList<product>();
		session.setAttribute("cartlist", list);
	}

	int cnt = 0; // 7. cnt 변수 설정
	product goodsqnt = new product(); // 8. goodsqnt dto 설정

	for (int i = 0; i < list.size(); i++) {
		goodsqnt = list.get(i);
		if (goodsqnt.getProductid().equals(id)) {
			cnt++;
			int orderquantity = goodsqnt.getQuantity() + 1;
			goodsqnt.setQuantity(orderquantity);
		}
	}

	if (cnt == 0) {
		goods.setQuantity(1);
		list.add(goods);
	}

	response.sendRedirect("./product.jsp?id=" + id);
	%>
</body>
</html>