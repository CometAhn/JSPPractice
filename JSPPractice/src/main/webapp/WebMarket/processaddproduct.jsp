<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.oreilly.servlet.*, com.oreilly.servlet.multipart.*"%>
<%@ page import="dto.product, dao.productrepository"%>
<%@page import="java.util.Enumeration"%>
<%@ page import="java.sql.*"%>
<%@include file="./dbconn.jsp"%>
<%
request.setCharacterEncoding("UTF-8");

String filename = "";
String realfolder = request.getRealPath("/resources/images");
//String realfolder = "C://dev/myworkspace/jwbook/src/main/webapp/WebMarket/WebContent/resources/images";

int maxsize = 5 * 1024 * 1024;
String enctype = "UTF-8";

MultipartRequest multi = new MultipartRequest(request, realfolder, maxsize, enctype, new DefaultFileRenamePolicy());

String productid = multi.getParameter("productid");
String name = multi.getParameter("name");
String unitprice = multi.getParameter("unitprice");
String description = multi.getParameter("description");
String manufacturer = multi.getParameter("manufacturer");
String category = multi.getParameter("category");
String unitsinstock = multi.getParameter("unitsinstock");
String condition = multi.getParameter("condition");

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

Enumeration files = multi.getFileNames();
String fname = (String) files.nextElement();
String fileName = multi.getFilesystemName(fname);

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
newproduct.setFilename(fileName);

PreparedStatement pstmt = null;

String sql = "insert into product value(?,?,?,?,?,?,?,?,?)";
pstmt = conn.prepareStatement(sql);
pstmt.setString(1, productid);
pstmt.setString(2, name);
pstmt.setInt(3, price);
pstmt.setString(4, description);
pstmt.setString(5, category);
pstmt.setString(6, manufacturer);
pstmt.setLong(7, stock);
pstmt.setString(8, condition);
pstmt.setString(9, fileName);
pstmt.executeUpdate();

if (pstmt != null)
	pstmt.close();
if (conn != null)
	conn.close();

dao.addproduct(newproduct);

response.sendRedirect("./products.jsp");
%>