<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h2>scope2.jsp�Դϴ�. ����� ���� ����غ���</h2>
	pageContext : <%=pageContext.getAttribute("name") %><br/>
	request : <%=request.getAttribute("id") %><br/>
	session : <%=session.getAttribute("pw") %><br/>
	application : <%=application.getAttribute("test") %>
</body>
</html>