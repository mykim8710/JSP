<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@page import="edu.bit.ex.*"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%!
		Connection conn;
		PreparedStatement pstmt;
		ResultSet rs;
	
		String driver = "oracle.jdbc.driver.OracleDriver";
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String uid = "scott";
		String upw = "tiger";
	%>
	
	<%
		try {
			Class.forName(driver);
			conn = DriverManager.getConnection(url, uid, upw);
			String query = "SELECT * FROM emp";
			pstmt = conn.prepareStatement(query);
			rs= pstmt.executeQuery();
			
			while(rs.next()) {
				String name = rs.getString("ENAME");
				String hireDate = rs.getString("HIREDATE");
				
				out.println(name +"     " + hireDate +"</br>");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null) {
					rs.close();
				}

				if (pstmt != null) {
					pstmt.close();
				}

				if (conn != null) {
					conn.close();
				}
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
	%>
</body>
</html>