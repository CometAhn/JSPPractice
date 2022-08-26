<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.net.URLEncoder"%>
<%
request.setCharacterEncoding("UTF-8");

Cookie cartid = new Cookie("shipping_cartid", URLEncoder.encode(request.getParameter("cartid"), "utf-8"));
Cookie name = new Cookie("shipping_name", URLEncoder.encode(request.getParameter("name"), "utf-8"));
Cookie shippingdate = new Cookie("shipping_shippingdate", URLEncoder.encode(request.getParameter("shippingdate"), "utf-8"));
Cookie country = new Cookie("shipping_country", URLEncoder.encode(request.getParameter("country"), "utf-8"));
Cookie zipcode = new Cookie("shipping_zipcode", URLEncoder.encode(request.getParameter("zipcode"), "utf-8"));
Cookie addressname = new Cookie("shipping_addressname", URLEncoder.encode(request.getParameter("addressname"), "utf-8"));

cartid.setMaxAge(24*60*60);
name.setMaxAge(24*60*60);
zipcode.setMaxAge(24*60*60);
country.setMaxAge(24*60*60);
addressname.setMaxAge(24*60*60);

response.addCookie(cartid);
response.addCookie(name);
response.addCookie(shippingdate);
response.addCookie(country);
response.addCookie(zipcode);
response.addCookie(addressname);

response.sendRedirect("./orderconfirmation.jsp");
%>