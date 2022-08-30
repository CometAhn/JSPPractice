<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*" %>
<%@ page import="mvc.model.boarddto" %>
<%
String sessionid = (String) session.getAttribute("sessionid");
List boardlist = (List) request.getAttribute("boardlist");
int total_record = ((Integer) request.getAttribute("total_record")).intValue();
int pagenum = ((Integer) request.getAttribute("pagenum")).intValue();
int total_page = ((Integer) request.getAttribute("total_page")).intValue();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<title>Board</title>
<script type="text/javascript">
	function checkForm() {	
		if (${sessionid==null}) {
			alert("로그인 해주세요.");
			return false;
		}

		location.href = "./boardwriteform.do?id=<%=sessionid%>"
	}
</script>
</head>
<body>
	<jsp:include page="../menu.jsp" />
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">게시판</h1>
		</div>
	</div>
	<div class="container">
		<form action="<c:url value="./boardlistaction.do"/>" method="post">
			<div>
				<div class="text-right">
					<span class="badge badge-success">전체 <%=total_record%>건	</span>
				</div>
			</div>
			<div style="padding-top: 50px">
				<table class="table table-hover">
					<tr>
						<th>번호</th>
						<th>제목</th>
						<th>작성일</th>
						<th>조회</th>
						<th>글쓴이</th>
					</tr>
					<%
						for (int j = 0; j < boardlist.size(); j++) {
							boarddto notice = (boarddto) boardlist.get(j);
					%>
					<tr>
						<td><%=notice.getNum()%></td>
						<td><a href="./BoardViewAction.do?num=<%=notice.getNum()%>&pageNum=<%=pagenum%>"><%=notice.getSubject()%></a></td>
						<td><%=notice.getRegist_day()%></td>
						<td><%=notice.getHit()%></td>
						<td><%=notice.getName()%></td>
					</tr>
					<%
						}
					%>
				</table>
			</div>
			<div align="center">
				<c:set var="pagenum" value="<%=pagenum%>" />
				<c:forEach var="i" begin="1" end="<%=total_page%>">
					<a href="<c:url value="./boardlistaction.do?pagenum=${i}" /> ">
						<c:choose>
							<c:when test="${pagenum==i}">
								<font color='4C5317'><b> [${i}]</b></font>
							</c:when>
							<c:otherwise>
								<font color='4C5317'> [${i}]</font>

							</c:otherwise>
						</c:choose>
					</a>
				</c:forEach>
			</div>
			<div align="left">
				<table>
					<tr>
						<td width="100%" align="left">&nbsp;&nbsp; 
						<select name="items" class="txt">
								<option value="subject">제목에서</option>
								<option value="content">본문에서</option>
								<option value="name">글쓴이에서</option>
						</select> <input name="text" type="text" /> <input type="submit" id="btnAdd" class="btn btn-primary " value="검색 " />
						</td>
						<td width="100%" align="right">
							<a href="#" onclick="checkForm(); return false;" class="btn btn-primary">&laquo;글쓰기</a>
						</td>
					</tr>
				</table>
			</div>
		</form>
		<hr>
	</div>
	<jsp:include page="../footer.jsp" />
</body>
</html>