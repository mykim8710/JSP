<%@page import="edu.bit.ex.*"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.*"%>

<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>Insert title here</title>
	</head>
	
	<body>
		<%
			MemberDAO dao = new MemberDAO();
			ArrayList<MemberDTO> dtos = dao.memberList();
			
			for(int i=0; i< dtos.size(); i++) {
				MemberDTO dto = dtos.get(i);
				String name = dto.getName();
				String id = dto.getId();
				String pw = dto.getPw();
				String address = dto.getAddress();
				String phone = dto.getPhone1()+"-"+dto.getPhone2()+"-"+dto.getPhone3();
				String gender = dto.getGender();
				
				out.println("�̸� : " +name +", ���̵� : " +id +", ��й�ȣ : " +pw +", �ּ� : "+address+", ����ó : " +phone +", ���� : " +gender +"<br/>");
			}
		%>
	</body>
</html>