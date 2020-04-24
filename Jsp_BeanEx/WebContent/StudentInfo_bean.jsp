<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<jsp:useBean id="student" class="edu.bit.ex.Student"></jsp:useBean>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="EUC-KR">
		<title>JAVA Bean 사용</title>
	</head>
	
	<body>
		<jsp:setProperty name="student" property="name"/>
		<jsp:setProperty name="student" property="age" />
		<jsp:setProperty name="student" property="grade"/>
		<jsp:setProperty name="student" property="studentNumber"/>
		
		이름 : <jsp:getProperty name="student" property="name" /><br/>
		나이 : <jsp:getProperty name="student" property="age" /><br/>
		학년 : <jsp:getProperty name="student" property="grade" /><br/>
		번호 : <jsp:getProperty name="student" property="studentNumber" />
	</body>
	
</html>