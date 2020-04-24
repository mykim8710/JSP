<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<form action="ObjectELOk.jsp">
		아이디 : <input type="text" name="id"> <br>
		비밀번호 : <input type="password" name="pw">
		<input type="submit" value="login">
	</form>
	
	<%
		pageContext.setAttribute("page_name", "page_value");
		request.setAttribute("request_name", "request_value");
		session.setAttribute("session_name", "application_value");
		application.setAttribute("application_name", "application_value");
	%>
</body>
</html>