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
				out.println("원의 넓이는 " +ca.getCircleArea() +"㎟ <br/>");	
			} else if(unit.equals("cm")) {
				out.println("원의 넓이는 " +ca.getCircleArea() +"㎠ <br/>");	
			} else {
				out.println("원의 넓이는 " +ca.getCircleArea() +"㎡ <br/>");
			}
		%>
		<a href="Main.jsp">처음으로</a>
	</body>
</html>