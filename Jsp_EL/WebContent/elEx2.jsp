<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>Insert title here</title>
	</head>
	
	<body>
		<h2>��ũ��Ʈ��</h2>
		<%
			String id = request.getParameter("id");
			String pw = request.getParameter("pw");
		%>
		<table border="1">
			<tr>
				<td>���̵�</td>
				<td><%=id %></td>
			</tr>
			<tr>
				<td>��й�ȣ</td>
				<td><%=pw %></td>
			</tr>
		</table>
		
		<h2>EL</h2>
		<table border="1">
			<tr>
				<td>���̵�</td>
				<td>${param.id}</td>
			</tr>
			<tr>
				<td>��й�ȣ</td>
				<td>${param.pw}</td>
			</tr>
		</table>
		
		
		
		
		
	</body>
</html>