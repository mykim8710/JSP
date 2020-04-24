<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>Insert title here</title>
	</head>
	
	<body>
		<form action="elEx2.jsp" method="post">
			<table>
				<tr> 
					<td>아이디</td>
					<td><input type="text" name="id" size="20"></td>
				</tr>
				<tr> 
					<td>비밀번호</td>
					<td><input type="password" name="pw" size="20"></td>
				</tr>
			</table>
			<input type="submit" value="로그인"/>
			<input type="reset" value="초기화"/> 
		</form>	
	</body>
</html>