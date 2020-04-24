<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import="edu.bit.ex.*" %>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="EUC-KR">
		<title>Scriptlet 사용</title>
	</head>
	
	<body>

		<%
			Student student = new Student();
			student.setName("홍길동");
			student.setAge(12);
			student.setGrade(5);
			student.setStudentNumber(20);
		%>
		이름 : <%=student.getName() %><br/>
		나이 : <%=student.getAge() %><br/>
		학년 : <%=student.getGrade() %><br/>
		번호 : <%=student.getStudentNumber() %>
	</body>
	
</html>