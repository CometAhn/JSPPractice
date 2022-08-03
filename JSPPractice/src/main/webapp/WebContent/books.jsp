<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Book"%>
<jsp:useBean id="bookDAO" class="dao.BookRepository" scope="session" />
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="menu.jsp" />
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">도서 목록</h1>
		</div>
	</div>
	<%
	ArrayList<Book> listOfBooks = bookDAO.getAllBooks();
	%>
	<div class="container">
		<div class="row">
			<%
			for (int i = 0; i < listOfBooks.size(); i++) {
			  Book book = listOfBooks.get(i);
			%><div>
				<h3>
					[<%=book.getCategory()%>]
					<%=book.getName()%></h3>
				<p><%=book.getDescription()%></p>
				<p><%=book.getAuthor()%>|<%=book.getPublisher()%>|<%=book.getUnitPrice()%>ì
				</p>
				<style>
					.dotted {color : #fff; border : 1px dotted ; border-style : dotted;}
				</style>
				<hr class="dotted">
			</div>
			<%
			}
			%>
		</div>
		<hr>
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>