<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList, dto.product, dao.productrepository"%>
<%
String id = request.getParameter("id");
if (id == null || id.trim().equals("")) {
	response.sendRedirect("./products.jsp");
	return;
}

productrepository dao = productrepository.getinstance();

product dto = dao.getproductbyid(id);
if (dto == null) {
	response.sendRedirect("./exceptionnoproductid.jsp");
}

ArrayList<product> cartlist = (ArrayList<product>) session.getAttribute("cartlist");
product goodsqnt = new product();
for (int i = 0; i < cartlist.size(); i++) {
	goodsqnt = cartlist.get(i);
	if (goodsqnt.getProductid().equals(id)) {
		cartlist.remove(goodsqnt);
	}
}

response.sendRedirect("./cart.jsp");
%>