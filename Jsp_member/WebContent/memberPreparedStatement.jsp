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
			String query = "INSERT INTO MEMBER (id, pw, name) values(?,?,?)";
			pstmt = conn.prepareStatement(query);
						
			pstmt.setString(1, "test");
			pstmt.setString(2, "test");
			pstmt.setString(3, "test");
			
			int n= pstmt.executeUpdate();			
			
			if(n == 1) {
				out.println("insert success");
			} else {
				out.println("insert fail");
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