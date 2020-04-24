<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import="java.util.Arrays" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>Insert title here</title>
	</head>

	<body>
		<%!
			String name;
			String id;
			String pw;
			String[] hobbys;
			int length;
			String major;
			String protocol;
		%>
		
		<%
			name = request.getParameter("name");
			id = request.getParameter("id");
			pw = request.getParameter("pw");
			hobbys = request.getParameterValues("hobby");
			length = hobbys.length;
			major = request.getParameter("major");
			protocol = request.getParameter("protocol");
		%>
		
		이름 : <%=name%><br/>
		아이디 : <%=id%><br/>
		비밀번호 : <%=pw%><br/>
		취미 : <% for(int i=0; i< length; i++) {out.println(hobbys[i]);}%><br/>
		전공 : <%=major%><br/>
		프로토콜 : <%=protocol%>
		
	</body>
</html>