<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="java.util.ArrayList"%>
<%@page import="edu.bit.ex.*"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>Insert title here</title>
		<style>
			table {
				background-color: #808080;
			}
		</style>	
	</head>
	
	<body>
		<%
			EmpDAO_CP dao = new EmpDAO_CP();
			ArrayList<EmpDTO> list = dao.getDTO();
			pageContext.setAttribute("dtoList", list);
		%>
		<table border="1">
			<tr>
				<td>�����ȣ</td>
				<td>�����</td>
				<td>����</td>
				<td>�Ŵ���</td>
				<td>�Ի���</td>
				<td>�޿�</td>
				<td>Ŀ�̼�</td>
				<td>�μ���ȣ</td>
			</tr>
			
			<c:forEach items="${dtoList}" var="dto">
				<tr>
					<td>${dto.empNo}</td>
					<td>${dto.ename}</td>
					<td>${dto.job}</td>
					<td>${dto.mgr}</td>
					<td>${dto.hireDate}</td>
					<td>${dto.sal}</td>
					<td>${dto.comm}</td>
					<td>${dto.deptNo}</td>
				</tr>
			</c:forEach>		
		</table>
		
		
	</body>
</html>