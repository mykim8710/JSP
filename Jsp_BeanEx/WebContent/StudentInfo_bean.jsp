<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<jsp:useBean id="student" class="edu.bit.ex.Student"></jsp:useBean>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="EUC-KR">
		<title>JAVA Bean ���</title>
	</head>
	
	<body>
		<jsp:setProperty name="student" property="name"/>
		<jsp:setProperty name="student" property="age" />
		<jsp:setProperty name="student" property="grade"/>
		<jsp:setProperty name="student" property="studentNumber"/>
		
		�̸� : <jsp:getProperty name="student" property="name" /><br/>
		���� : <jsp:getProperty name="student" property="age" /><br/>
		�г� : <jsp:getProperty name="student" property="grade" /><br/>
		��ȣ : <jsp:getProperty name="student" property="studentNumber" />
	</body>
	
</html>