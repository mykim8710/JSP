<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>Insert title here</title>
	</head>
	
	<body>
		<h2>EL</h2>
		<h5>�ڷ����� ���</h5>
		(int) ${10}<br/> 
		(double)  ${99.99}<br/> 
		(char)   ${'a'}<br/> 
		(char)   ${"a"}<br/> 
		(String)   ${'abc'}<br/>  
		(String)   ${"abc"}<br/>  
		(boolean)   ${true}<br/>
		<br/>
		<h5>������</h5>
		(1+2)   ${1+2}<br/>
		(1-2)   ${1-2}<br/>
		(1*2)   ${1*2}<br/>
		(1/2)   ${1/2}<br/>
		(1%2)   ${1%2}<br/>
		(1>2)   ${1>2}<br/>
		(1<2)   ${1<2}<br/>
				${1 == 2} <br/>
		(1<2 ? 1 : 2)   ${1<2 ? 1 : 2}<br/>
		(1>2 || 1<2)   ${1>2 || 1<2}<br/>
		(1>2 && 1<2)   ${1>2 && 1<2}<br/>
		<br/>
		
		<h5>�ڹٺ���</h5>
		<jsp:useBean id="member" class="edu.bit.ex.Member" scope="page"></jsp:useBean>
		<!-- Member member = new Member(); -->
		
		<jsp:setProperty name="member" property="name" value = "ȫ�浿"/>
		<!-- member.setName("ȫ�浿"); -->
		<jsp:setProperty name="member" property="id" value = "hgdong1234"/>
		<!-- member.setId("hgdong1234"); -->
		<jsp:setProperty name="member" property="pw" value = "12345678"/>
		<!-- member.setPw("12345678"); -->
		
		�̸� : <jsp:getProperty name="member" property="name" /><br/>
		<!-- member.getName(); -->
		���̵� : <jsp:getProperty name="member" property="id" /><br/>
		<!-- member.getId(); -->
		��й�ȣ : <jsp:getProperty name="member" property="pw" /><br/>
		<!-- member.getPw(); -->
		
		<br/>
		<h5>EL���</h5>
		�̸� : ${member.name}<br/>
		���̵� : ${member.id}<br/>
		��й�ȣ : ${member.pw}<br/>
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	</body>
</html>