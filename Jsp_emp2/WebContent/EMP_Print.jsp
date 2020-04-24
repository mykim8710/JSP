<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import="edu.bit.ex.*"%>
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%
	empDAO_CP daoCP = new empDAO_CP();
	ArrayList<empDTO> dtoList = daoCP.getDTOList();
	pageContext.setAttribute("list", dtoList);
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>

<body>
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
		<c:forEach var="dto" items="${pageScope.list}">
			<tr>
				<td><c:out value="${dto.empNo}"></c:out></td>
				<td><c:out value="${dto.eName}"></c:out></td>
				<td><c:out value="${dto.job}"></c:out></td>
				<td><c:out value="${dto.mgr}"></c:out></td>
				<td><c:out value="${dto.hireDate}"></c:out></td>
				<td><c:out value="${dto.sal}"></c:out></td>
				<td><c:out value="${dto.comm}"></c:out></td>
				<td><c:out value="${dto.deptNo}"></c:out></td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>