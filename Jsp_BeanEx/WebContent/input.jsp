<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>Insert title here</title>
	</head>
	
	<body>
		<form action="StudentInfo_bean.jsp">
			<table>
				<tr>
					<td>이름</td>
					<td><input type="text" name="name" size="20"></td>
				</tr>
				<tr>
					<td>나이</td>
					<td><input type="text" name="age" size="20"></td>
				</tr>
				<tr>
					<td>학년</td>
					<td><input type="text" name="grade" size="20"></td>
				</tr>
				<tr>
					<td>번호</td>
					<td><input type="text" name="studentNumber" size="20"></td>
				</tr>
			</table>
			<input type="submit" value="send">
		</form>
	</body>
</html>