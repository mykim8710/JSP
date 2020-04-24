<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>Insert title here</title>
		<style type="text/css">
			table {
				background-color: #A2D9CE;
			}
		</style>
	</head>
	
	<body>
		<h2>구구단 출력</h2>
		<table border="1">
			<c:forEach var="i" begin="0" end="9" step="1">
				<tr>
					<c:forEach var="j" begin="2" end="9" step="1"> 
						<c:choose>
							<c:when test="${i==0}">
								<td>${j}단</td>	
							</c:when>
							<c:otherwise>
								<td>${j} x ${i} = ${i*j}</td>
							</c:otherwise>
						</c:choose>				
					</c:forEach>
				</tr>
			</c:forEach>
		</table>
		<hr/>
		
		<h2>구구단 출력(짝수단)</h2>
		<table border="1">
			<c:forEach var="i" begin="0" end="9" step="1">
				<tr>
					<c:forEach var="j" begin="2" end="9" step="1"> 
						<c:if test="${j%2==0}">
							<c:choose>
								<c:when test="${i==0}">
									<td>${j}단</td>	
								</c:when>
								<c:otherwise>
										<td>${j} x ${i} = ${i*j}</td>
								</c:otherwise>
							</c:choose>					
						</c:if>				
					</c:forEach>
				</tr>
			</c:forEach>
		</table>
		<hr/>
		
		<h2>구구단 출력(홀수단)</h2>
		<table border="1">
			<c:forEach var="i" begin="0" end="9" step="1">
				<tr>
					<c:forEach var="j" begin="2" end="9" step="1"> 
						<c:if test="${j%2==1}">
							<c:choose>
								<c:when test="${i==0}">
									<td>${j}단</td>	
								</c:when>
								<c:otherwise>
										<td>${j} x ${i} = ${i*j}</td>
								</c:otherwise>
							</c:choose>					
						</c:if>			
					</c:forEach>
				</tr>
			</c:forEach>
		</table>
		<hr/>
			
	</body>
</html>