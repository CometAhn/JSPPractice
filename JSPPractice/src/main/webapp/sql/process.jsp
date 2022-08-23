<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="person.DTO, person.DAO,java.sql.*"%>
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
	
	String SQL = null;

	Connection con = null;
	PreparedStatement pstmt = null;

	String driver = "com.mysql.cj.jdbc.Driver";

	String url = "jdbc:mysql://localhost:3306/member";
	String user = "root";
	String pw = "0000";

		SQL = "insert into person values('" + name + "', " + age + ", '" + email + "');";

		try {
			Class.forName(driver);

			con = DriverManager.getConnection(url, user, pw);

			pstmt = con.prepareStatement(SQL);

			int r = pstmt.executeUpdate();

		} catch (SQLException e) {
			System.out.println("SQL Error : " + e.getMessage());
		} catch (ClassNotFoundException e1) {
			System.out.println("JDBC Connector Driver Error :  " + e1.getMessage());
		} finally {
			if (pstmt != null) {
				try {
					pstmt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			if (con != null) {
				try {
					con.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
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
	Statement stmt = null;
	ResultSet rs = null;


	SQL = "SELECT * FROM person;";

	try {
		Class.forName(driver);

		con = DriverManager.getConnection(url, user, pw);
		stmt = con.createStatement();
		rs = stmt.executeQuery(SQL);
		 

		int i=0;
		while (rs.next()) {
			i++;
			name = rs.getString("name");
			age = rs.getInt("age");
			email = rs.getString("email");

%>
				<tr>
					<td><%=i%></td>
					<td><%=name%></td>
					<td><%=age%></td>
					<td><%=email%></td>
				</tr>
				<%
		}
	} catch (SQLException e) {
		System.out.println("SQL Error : " + e.getMessage());
	} catch (ClassNotFoundException e1) {
		System.out.println("JDBC Connector Driver Error : " + e1.getMessage());
	} finally {
		if (rs != null) {
			try {
				rs.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

		if (stmt != null) {
			try {
				stmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

		if (con != null) {
			try {
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

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