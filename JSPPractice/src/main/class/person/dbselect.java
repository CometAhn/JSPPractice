package person;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class dbselect {

	public static void main(String[] args) {
		Connection con = null;
		Statement stmt = null;
		ResultSet rs = null;

		String driver = "com.mysql.cj.jdbc.Driver";

		String url = "jdbc:mysql://localhost:3306/member";
		String user = "root";
		String pw = "0000";

		String SQL = "SELECT * FROM person;";

		try {
			Class.forName(driver);

			con = DriverManager.getConnection(url, user, pw);
			stmt = con.createStatement();
			rs = stmt.executeQuery(SQL);
			System.out.printf("%s	%4s %s\n", "이름", "나이", "이메일");

			while (rs.next()) {
				String name = rs.getString("name");
				int age = rs.getInt("age");
				String email = rs.getString("email");

				System.out.printf("%s	%4s %s\n", name, age, email);
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
	}

}
