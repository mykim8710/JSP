<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import= "java.util.Arrays" %>
<!DOCTYPE html>

<html>
	<head>
		<meta charset="EUC-KR">
		<title>Insert title here</title>
	</head>

	<body>
		<%!
			int i =10;
			String str ="ABC";
			
			private int sum(int a, int b) {
				return a+b;	
			}
		%>
		
		<%= i%><br/>
		<%= str%><br/>
		<%= sum(5, 10) %> <br/>
		
		<%
			int[] arr = {1,2,3,4,5};
			out.println(Arrays.toString(arr));
		%>
		
		
		
	</body>

</html>