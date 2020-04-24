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
			int i = 0;
			while (true) {
				i++;
				out.println("2 x " + i + " = " + (2 * i) + "<br/>");
				out.println("=======<br/>");
				if (i >= 9) {
					break;
				}
			}
		%>
		
		<%!
			int i =10;
			String str = "ABC";
		%>
		
		<%!
			public int sum(int a, int b) {
				return a+b;
			}
		%>
		
		<%	
			out.println("<br/>");
			out.println("i = " +i +"<br/>");
			out.println("str = " +str +"<br/>");
			out.println("sum = " +sum(3,5) +"<br/>");
		%>
	</body>

</html>