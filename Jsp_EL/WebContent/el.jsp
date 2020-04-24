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
		<h5>자료형별 출력</h5>
		(int) ${10}<br/> 
		(double)  ${99.99}<br/> 
		(char)   ${'a'}<br/> 
		(char)   ${"a"}<br/> 
		(String)   ${'abc'}<br/>  
		(String)   ${"abc"}<br/>  
		(boolean)   ${true}<br/>
		<br/>
		<h5>연산자</h5>
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
		
		<h5>자바빈사용</h5>
		<jsp:useBean id="member" class="edu.bit.ex.Member" scope="page"></jsp:useBean>
		<!-- Member member = new Member(); -->
		
		<jsp:setProperty name="member" property="name" value = "홍길동"/>
		<!-- member.setName("홍길동"); -->
		<jsp:setProperty name="member" property="id" value = "hgdong1234"/>
		<!-- member.setId("hgdong1234"); -->
		<jsp:setProperty name="member" property="pw" value = "12345678"/>
		<!-- member.setPw("12345678"); -->
		
		이름 : <jsp:getProperty name="member" property="name" /><br/>
		<!-- member.getName(); -->
		아이디 : <jsp:getProperty name="member" property="id" /><br/>
		<!-- member.getId(); -->
		비밀번호 : <jsp:getProperty name="member" property="pw" /><br/>
		<!-- member.getPw(); -->
		
		<br/>
		<h5>EL사용</h5>
		이름 : ${member.name}<br/>
		아이디 : ${member.id}<br/>
		비밀번호 : ${member.pw}<br/>
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	</body>
</html>