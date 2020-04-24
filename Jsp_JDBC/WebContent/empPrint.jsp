<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
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
				Class.forName(driver);
				connection = DriverManager.getConnection(url, uid, upw);
				statement = connection.createStatement();
				resultSet = statement.executeQuery(query);
	
				out.println("<table border = \"2\" width=\"1000\" height =\"500\"");
					out.println("<tr>");
						out.println("<td align=center valign=middle>�����ȣ</td>");
						out.println("<td align=center valign=middle>�̸�</td>");
						out.println("<td align=center valign=middle>����</td>");
						out.println("<td align=center valign=middle>�Ŵ���</td>");
						out.println("<td align=center valign=middle>�Ի���</td>");
						out.println("<td align=center valign=middle>�޿�</td>");
						out.println("<td align=center valign=middle>Ŀ�̼�</td>");
						out.println("<td align=center valign=middle>�μ���ȣ</td>");
					out.println("</tr>");
							
				while (resultSet.next()) {
	
					String empNo = resultSet.getString("EMPNO");
					String name = resultSet.getString("ENAME");
					String job = resultSet.getString("JOB");
					String mgr = resultSet.getString("MGR");
					String hireDate = resultSet.getString("HIREDATE");
					String sal = resultSet.getString("SAL");
					String comm = resultSet.getString("COMM");
					String deptNo = resultSet.getString("DEPTNO");
	
					out.println("<tr>");
						out.println("<td align=center valign=middle>" + empNo + "</td>");
						out.println("<td align=center valign=middle>" + name + "</td>");
						out.println("<td align=center valign=middle>" + job + "</td>");			
						out.println("<td align=center valign=middle>" + mgr + "</td>");
						out.println("<td align=center valign=middle>" + hireDate.substring(0,10) + "</td>");
						out.println("<td align=center valign=middle>" + sal + "</td>");
						out.println("<td align=center valign=middle>" + comm + "</td>");
						out.println("<td align=center valign=middle>" + deptNo + "</td>");
					out.println("</tr>");
				}
				out.println("</table>");
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
	
				} catch (Exception e) {
				}
			}
		%>
	</body>
</html>