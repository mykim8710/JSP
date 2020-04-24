<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>Insert title here</title>
	</head>
	
	<body>
		<h2>스크립트릿</h2>
		<%
			String id = request.getParameter("id");
			String pw = request.getParameter("pw");
		%>
		<table border="1">
			<tr>
				<td>아이디</td>
				<td><%=id %></td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td><%=pw %></td>
			</tr>
		</table>
		
		<h2>EL</h2>
		<table border="1">
			<tr>
				<td>아이디</td>
				<td>${param.id}</td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td>${param.pw}</td>
			</tr>
		</table>
		
		
		
		
		
	</body>
</html>