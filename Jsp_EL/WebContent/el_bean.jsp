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
		m.setName("ȫ�浿1");
		m.setId("���̵�1");
		m.setPw("��й�ȣ1");
	%>
	<h2>Scriptlet</h2>
	�̸� : <%=m.getName()%><br/>
	���̵� : <%=m.getId() %><br/>
	��й�ȣ : <%=m.getPw() %><br/>
	<hr/>
	
	<jsp:useBean id="m2" class="edu.bit.ex.Member" scope="page"></jsp:useBean>
	<jsp:setProperty name="m2" property="name" value="ȫ�浿2"/>
	<jsp:setProperty name="m2" property="id" value="���̵�2"/>
	<jsp:setProperty name="m2" property="pw" value="��й�ȣ2"/>
	
	<h2>Java Bean, �׼��±�</h2>
	�̸� : <jsp:getProperty name="m2" property="name" /><br/>
	���̵� : <jsp:getProperty name="m2" property="id" /><br/>
	��й�ȣ : <jsp:getProperty name="m2" property="name" /><br/>
	<hr/>
	
	<h2>EL1</h2>
	�̸� : ${m.name}<br/>
	���̵� : ${m.id}<br/>
	��й�ȣ : ${m.pw}<br/>
	<br/>
	<h2>EL1</h2>
	�̸� : ${m2.name}<br/>
	���̵� : ${m2.id}<br/>
	��й�ȣ : ${m2.pw}<br/>
		
</body>
</html>