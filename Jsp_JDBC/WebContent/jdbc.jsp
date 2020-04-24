<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.Statement"%>
<%@ page import="java.sql.Connection"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>

<body>
	<%!
		Connection connection;
		Statement statement;
		ResultSet resultSet;
	
		String driver = "oracle.jdbc.driver.OracleDriver";
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String uid = "scott";
		String upw = "tiger";
		String query = "SELECT * FROM emp";
	%>

	<%
		try {
			Class.forName(driver); //oracle.jdbc.driver.OracleDriver -> ��ü����
			connection = DriverManager.getConnection(url, uid, upw); //jdbc:oracle:thin:@localhost:1521:xe
			statement = connection.createStatement();
			resultSet = statement.executeQuery(query); //select * from emp, �������� ���� ����� ���� ��ü

			while (resultSet.next()) {
				String name = resultSet.getString("ename");
				String job = resultSet.getString("job");
				String mgr = resultSet.getString("mgr");

				out.println("�̸� : " + name + ", ��å : " + job + ", �޴��� " + mgr + "<br />");
			}

		} catch (Exception e) {
		} finally {
			try {
				if (resultSet != null) {
					resultSet.close();
				}
					
				if (statement != null) {
					statement.close();
				}
					
				if (connection != null) {
					connection.close();
				}
					
			} catch (Exception e) {}
		}
	%>

</body>
</html>