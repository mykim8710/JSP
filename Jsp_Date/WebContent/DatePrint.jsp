<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.text.SimpleDateFormat"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>Insert title here</title>
		<style>
			p {
				font-size: 20px;
				font-weight: bold;
			}
		</style>
	</head>

	<body>
		<%
			Date today = new Date();
			SimpleDateFormat date = new SimpleDateFormat("yyyy/MM/dd");
			SimpleDateFormat time = new SimpleDateFormat("hh:mm:ss a");
			out.println("<p>JSP�� �ۼ�</p>");
			out.println("<p>��¥/�ð� ���</p>");
			out.println("<p>���ó�¥ : " + date.format(today) + "</p>");
			out.println("<p>����ð� : " + time.format(today) + "</p>");
		%>
		
	</body>

</html>