<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<jsp:useBean id="circle" class="edu.bit.ex.Circle" scope="page"></jsp:useBean>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>원의 넓이 결과</title>
	</head>
	
	<body>
		
		<jsp:setProperty name="circle" property="radius"/>
		반지름 : <jsp:getProperty name="circle" property="radius"/><br/>
		원의넓이 : <%=circle.getArea()%>
		
	</body>
</html>