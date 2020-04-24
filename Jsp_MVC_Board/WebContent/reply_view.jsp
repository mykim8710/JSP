<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>댓글달기 페이지</title>
	</head>
	
	<body>
		<h1>${reply_view.bId}번 글에 대한 댓글 페이지</h1>
		<form action="reply.do" method="post">
			<input type="hidden" name="bId" value="${reply_view.bId}">
			<input type="hidden" name="bGroup" value="${reply_view.bGroup}">
			<input type="hidden" name="bStep" value="${reply_view.bStep}">
			<input type="hidden" name="bIndent" value="${reply_view.bIndent}">
			
			<table width="500" cellpadding="0" cellspacing="0" border="1">	
				<tr>
					<td>게시물 번호</td>
					<td>${reply_view.bId}</td>
				</tr>
				<tr>
					<td>조회수</td>
					<td>${reply_view.bHit}</td>
				</tr>
				<tr>
					<td>작성자</td>
					<td><input type="text" name="bName" size = "50" value="${reply_view.bName}"></td>
				</tr>
				<tr>
					<td>제목</td>
					<td><input type="text" name="bTitle" size = "50" value="re : ${reply_view.bTitle}"></td>
				</tr>
				<tr>
					<td>내용</td>
					<td><textarea name="bContent" rows="10">${reply_view.bContent}</textarea></td>
				</tr>
				<tr >
					<td colspan="2"> <input type="submit" value="댓글"> &nbsp;&nbsp; <a href="list.do">목록보기</a></td>
				</tr>
			</table>
		</form>
	</body>
</html>