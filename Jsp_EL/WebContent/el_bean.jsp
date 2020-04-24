<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="edu.bit.ex.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
		Member m = new Member();
		m.setName("홍길동1");
		m.setId("아이디1");
		m.setPw("비밀번호1");
	%>
	<h2>Scriptlet</h2>
	이름 : <%=m.getName()%><br/>
	아이디 : <%=m.getId() %><br/>
	비밀번호 : <%=m.getPw() %><br/>
	<hr/>
	
	<jsp:useBean id="m2" class="edu.bit.ex.Member" scope="page"></jsp:useBean>
	<jsp:setProperty name="m2" property="name" value="홍길동2"/>
	<jsp:setProperty name="m2" property="id" value="아이디2"/>
	<jsp:setProperty name="m2" property="pw" value="비밀번호2"/>
	
	<h2>Java Bean, 액션태그</h2>
	이름 : <jsp:getProperty name="m2" property="name" /><br/>
	아이디 : <jsp:getProperty name="m2" property="id" /><br/>
	비밀번호 : <jsp:getProperty name="m2" property="name" /><br/>
	<hr/>
	
	<h2>EL1</h2>
	이름 : ${m.name}<br/>
	아이디 : ${m.id}<br/>
	비밀번호 : ${m.pw}<br/>
	<br/>
	<h2>EL1</h2>
	이름 : ${m2.name}<br/>
	아이디 : ${m2.id}<br/>
	비밀번호 : ${m2.pw}<br/>
		
</body>
</html>