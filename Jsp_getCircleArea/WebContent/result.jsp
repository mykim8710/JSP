<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<jsp:useBean id="circle" class="edu.bit.ex.Circle" scope="page"></jsp:useBean>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>���� ���� ���</title>
	</head>
	
	<body>
		
		<jsp:setProperty name="circle" property="radius"/>
		������ : <jsp:getProperty name="circle" property="radius"/><br/>
		���ǳ��� : <%=circle.getArea()%>
		
	</body>
</html>