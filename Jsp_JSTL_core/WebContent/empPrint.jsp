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
				<td>사원번호</td>
				<td>사원명</td>
				<td>직무</td>
				<td>매니져</td>
				<td>입사일</td>
				<td>급여</td>
				<td>커미션</td>
				<td>부서번호</td>
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