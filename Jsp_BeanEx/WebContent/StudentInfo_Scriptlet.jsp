<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import="edu.bit.ex.*" %>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="EUC-KR">
		<title>Scriptlet ���</title>
	</head>
	
	<body>

		<%
			Student student = new Student();
			student.setName("ȫ�浿");
			student.setAge(12);
			student.setGrade(5);
			student.setStudentNumber(20);
		%>
		�̸� : <%=student.getName() %><br/>
		���� : <%=student.getAge() %><br/>
		�г� : <%=student.getGrade() %><br/>
		��ȣ : <%=student.getStudentNumber() %>
	</body>
	
</html>