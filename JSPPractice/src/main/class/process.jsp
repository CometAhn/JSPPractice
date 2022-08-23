<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="person.DTO, person.DAO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<title>Insert title here</title>
</head>
<body>
	<%-- request 받아오기 ㄱ --%>
	<%
	request.setCharacterEncoding("UTF-8");

	String name = request.getParameter("name");
	int age = Integer.parseInt(request.getParameter("age"));
	String email = request.getParameter("email");

	DTO dto = new DTO();
	dto.setName(name);
	dto.setAge(age);
	dto.setEmail(email);

	DAO dao = new DAO();
	dao.adddata(dto);
	%>
	<%-- 출력 ㄱ --%>
	<div class="row">
		<div class="col-xs-4 col-md-4 col-sm-4"></div>
		<div class="col-xs-4 col-md-4 col-sm-4">
			<table class="table">
				<tr>
					<th width="70px">번호</th>
					<th width="100px">이름</th>
					<th width="70px">나이</th>
					<th width="200px">이메일</th>
				</tr>
				<%
				DAO instance = DAO.getInstance();
				ArrayList<DTO> tmp = instance.getAll();

				for (int i = 0; i < tmp.size(); i++) {
					DTO dt = new DTO();
					dt = tmp.get(i);
				%>
				<tr>
					<td><%=i + 1%></td>
					<td><%=dt.getName()%></td>
					<td><%=dt.getAge()%></td>
					<td><%=dt.getEmail()%></td>
				</tr>
				<%
				}
				%>
			</table>
			<form action="./addperson.jsp"> 
					<input type="submit" value="더 추가 ㄱ?" class="btn btn-default">
			</form>
		</div>
	</div>
</body>
</html>