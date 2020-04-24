<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>Insert title here</title>
	</head>
	
	<body>
		��������<br/>
		<!-- var varName = "varName"; -->
		<c:set var="varName" value="varValue"/>
			varName : <c:out value="${varName}"/>
		<br/>
		
		<!-- var num = 100; -->
		<c:set var="num" value="100"/>
			num : <c:out value="${num}"/>
		<hr/>
		
		��������<br/>
		<c:remove var="num"/>
			varName : <c:out value="${varName}"/><br/>
			
			num : <c:out value="${num}"/>
		<hr/>
		
		����ó��<br/>
		<c:catch var ="error">
			<%=2/0%>
		</c:catch><br/>
		<c:out value="${error}"/>
		<hr/>
		
		���ǹ�(if��)<br/>
		<c:if test="${1+2==3}">
			1+2=3
		</c:if>
		<br/>
		<c:if test="${1+2!=3}">
			1+2=3
		</c:if>
		<hr/>
		
		forEach��<br/>
		<c:forEach var="feach" begin="0" end="30" step="1">
			${feach}
		</c:forEach>
		<hr/>
		
		Switch��<br/>
		<c:choose>
			<c:when test="${1 > 0}">
				1�� 0���� ũ��<br/>
			</c:when>
			<c:when test="${2 > 0}">
				2�� 0���� ũ��<br/>
				</c:when>
			<c:otherwise>
				�����ϸ� ũ��..!!
			</c:otherwise>
		</c:choose>
		
	</body>
</html>