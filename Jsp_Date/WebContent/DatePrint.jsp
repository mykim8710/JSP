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
			out.println("<p>JSP로 작성</p>");
			out.println("<p>날짜/시간 출력</p>");
			out.println("<p>오늘날짜 : " + date.format(today) + "</p>");
			out.println("<p>현재시간 : " + time.format(today) + "</p>");
		%>
		
	</body>

</html>