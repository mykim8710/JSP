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
			TriangleArea ta = new TriangleArea(w, h);
			
			if(unit.equals("mm")) {
				out.println("�ﰢ���� ���̴� " +ta.getTriangleArea() +"�� <br/>");	
			} else if(unit.equals("cm")) {
				out.println("�ﰢ���� ���̴� " +ta.getTriangleArea() +"�� <br/>");	
			} else {
				out.println("�ﰢ���� ���̴� " +ta.getTriangleArea() +"�� <br/>");
			}
		%>
		<a href="Main.jsp">ó������</a>
	</body>
</html>