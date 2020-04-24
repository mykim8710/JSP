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
		pageContext.setAttribute("name", "홍길동");
		request.setAttribute("id", "abcde");
		session.setAttribute("pw", "456123");
		application.setAttribute("test", "test");
		
	%>
	
	<h2>저장된 정보 출력해보기</h2>
		pageContext : <%=pageContext.getAttribute("name") %><br/>
		request : <%=request.getAttribute("id") %><br/>
		session : <%=session.getAttribute("pw") %><br/>
		application : <%=application.getAttribute("test") %>
	<br/>
	
	<a href="scope2.jsp">move</a>
	<%-- <jsp:forward page="scope2.jsp"></jsp:forward> --%>
	

</body>
</html>