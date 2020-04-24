<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>게시판</title>
</head>
<body>
	<h1>게시판</h1>
	<table width="800"  height="200"  border="1">
		<tr>
			<td>게시물 번호</td>
			<td>작성자</td>
			<td>제목</td>
			<td>작성일</td>
			<td>조회수</td>
		</tr>
		<c:forEach items="${list}" var="dto">
			<tr>
				<td>#${dto.bId}</td>
				<td>${dto.bName}</td>
				<td><c:forEach begin="1" end="${dto.bIndent}">└</c:forEach><a href="content_view.do?bId=${dto.bId}">${dto.bTitle}</a></td>
				<td>${dto.bDate}</td>
				<td>${dto.bHit}</td>
			</tr>
		</c:forEach>
		<tr>
			<td colspan="5"><a href="write_view.do">새글작성</a></td>
		</tr>
	</table>
</body>
</html>

