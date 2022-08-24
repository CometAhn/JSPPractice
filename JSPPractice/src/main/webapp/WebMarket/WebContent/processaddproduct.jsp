<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="dto.product, dao.productrepository"%>

<%
request.setCharacterEncoding("UTF-8");

String productid = request.getParameter("productid");
String name = request.getParameter("name");
String unitprice = request.getParameter("unitprice");
String description = request.getParameter("description");
String manufacturer = request.getParameter("manufacturer");
String category = request.getParameter("category");
String unitsinstock = request.getParameter("unitsinstock");
String condition = request.getParameter("condition");

Integer price;

if (unitprice.isEmpty())
	price = 0;
else
	price = Integer.valueOf(unitprice);

long stock;

if (unitsinstock.isEmpty())
	stock = 0;
else
	stock = Long.valueOf(unitsinstock);

// dao 객체를 가져와서 연결
productrepository dao = productrepository.getinstance();

// dto 객체를 만들어서 집어넣기 객체를 초기화
product newproduct = new product();
newproduct.setProductid(productid);
newproduct.setPname(name);
newproduct.setUnitprice(price);
newproduct.setDescription(description);
newproduct.setManufacturer(manufacturer);
newproduct.setCategory(category);
newproduct.setUnitsinstock(stock);
newproduct.setCondition(condition);

dao.addproduct(newproduct);

response.sendRedirect("./products.jsp");
%>