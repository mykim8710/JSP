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
			<td>�����ȣ</td>
			<td>�����</td>
			<td>����</td>
			<td>�Ŵ���</td>
			<td>�Ի���</td>
			<td>�޿�</td>
			<td>Ŀ�̼�</td>
			<td>�μ���ȣ</td>
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