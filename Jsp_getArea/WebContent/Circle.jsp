<%@ page import="edu.bit.ex.*" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>Insert title here</title>
	</head>

	<body>
		<%	
			String radius = request.getParameter("radius");
			String unit = request.getParameter("unit");
			double r = Double.parseDouble(radius);
			CircleArea ca = new CircleArea(r);
			
			if(unit.equals("mm")) {
				out.println("���� ���̴� " +ca.getCircleArea() +"�� <br/>");	
			} else if(unit.equals("cm")) {
				out.println("���� ���̴� " +ca.getCircleArea() +"�� <br/>");	
			} else {
				out.println("���� ���̴� " +ca.getCircleArea() +"�� <br/>");
			}
		%>
		<a href="Main.jsp">ó������</a>
	</body>
</html>