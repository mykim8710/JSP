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
			String width = request.getParameter("width");
			String height = request.getParameter("height");
			String unit = request.getParameter("unit");
			double w = Double.parseDouble(width);
			double h = Double.parseDouble(height);
			RectangleArea ra = new RectangleArea(w, h);
			
			if(unit.equals("mm")) {
				out.println("사각형의 넓이는 " +ra.getRectangleArea() +"㎟ <br/>");	
			} else if(unit.equals("cm")) {
				out.println("사각형의 넓이는 " +ra.getRectangleArea() +"㎠ <br/>");	
			} else {
				out.println("사각형의 넓이는 " +ra.getRectangleArea() +"㎡ <br/>");
			}
		%>
		<a href="Main.jsp">처음으로</a>
	</body>
</html>