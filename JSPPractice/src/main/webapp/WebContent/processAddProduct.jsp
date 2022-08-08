<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="pack.Product, pack.ProductRepository"%>
<%@ page import="com.oreilly.servlet.*"%>
<%@ page import="com.oreilly.servlet.multipart.*"%>
<%@ page import="java.util.*"%>
<%
request.setCharacterEncoding("UTF-8");

String filename = "";
String realFolder = "../images/";	// 웹 애플리케이션상의 절대 경로
int maxSize = 5 * 1024 * 1024;		// 최대 업로드될 파일의 크기 5MB
String encType = "utf-8";			// 인코딩 유형

MultipartRequest multi = new MultipartRequest(request, realFolder, maxSize, encType, new DefaultFileRenamePolicy());

String productId = request.getParameter("productId");
String name = request.getParameter("name");
String unitPrice = request.getParameter("unitPrice");
String description = request.getParameter("description");
String manufacturer = request.getParameter("manufacturer");
String category = request.getParameter("category");
String unitsInStock = request.getParameter("unitsInStock");
String condition = request.getParameter("condition");

Integer price;

if (unitPrice.isEmpty())
  price = 0;
else
  price = Integer.valueOf(unitPrice);

long stock;

if (unitsInStock.isEmpty())
  stock = 0;
else
  stock = Long.valueOf(unitsInStock);

Enumeration files = multi.getFileNames();
String fname = (String) files.nextElement();
String fileName = multi.getFilesystemName(fname);

ProductRepository dao = ProductRepository.getInstance();

Product newProduct = new Product();
newProduct.setProductId(productId);
newProduct.setPname(name);
newProduct.setUnitPrice(price);
newProduct.setDescription(description);
newProduct.setManufacturer(manufacturer);
newProduct.setCategory(category);
newProduct.setUnitsInStock(stock);
newProduct.setCondition(condition);
newProduct.setFilename(fileName);

dao.addProduct(newProduct);

response.sendRedirect("products.jsp");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>