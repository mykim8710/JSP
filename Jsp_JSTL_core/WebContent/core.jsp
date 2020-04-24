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
		변수선언<br/>
		<!-- var varName = "varName"; -->
		<c:set var="varName" value="varValue"/>
			varName : <c:out value="${varName}"/>
		<br/>
		
		<!-- var num = 100; -->
		<c:set var="num" value="100"/>
			num : <c:out value="${num}"/>
		<hr/>
		
		변수제거<br/>
		<c:remove var="num"/>
			varName : <c:out value="${varName}"/><br/>
			
			num : <c:out value="${num}"/>
		<hr/>
		
		예외처리<br/>
		<c:catch var ="error">
			<%=2/0%>
		</c:catch><br/>
		<c:out value="${error}"/>
		<hr/>
		
		조건문(if문)<br/>
		<c:if test="${1+2==3}">
			1+2=3
		</c:if>
		<br/>
		<c:if test="${1+2!=3}">
			1+2=3
		</c:if>
		<hr/>
		
		forEach문<br/>
		<c:forEach var="feach" begin="0" end="30" step="1">
			${feach}
		</c:forEach>
		<hr/>
		
		Switch문<br/>
		<c:choose>
			<c:when test="${1 > 0}">
				1은 0보다 크다<br/>
			</c:when>
			<c:when test="${2 > 0}">
				2는 0보다 크다<br/>
				</c:when>
			<c:otherwise>
				웬만하면 크다..!!
			</c:otherwise>
		</c:choose>
		
	</body>
</html>