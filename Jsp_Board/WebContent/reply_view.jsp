<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>댓글다는 페이지</title>
	</head>
	
	<body>
		<h1>${replyView.bId}번글에 대한 댓글 페이지</h1>
		<form action="reply.do" method="post">
			<input type="hidden" name="bGroup" value="${replyView.bGroup}">
			<input type="hidden" name="bStep" value="${replyView.bStep}">
			<input type="hidden" name="bIndent" value="${replyView.bIndent}">
			<table border="1">
				<tr>
					<td>게시물 번호</td>
					<td>#${replyView.bId}</td>
				</tr>
				<tr>
					<td>작성일시</td>
					<td>${replyView.bDate}</td>
				</tr>
				<tr>
					<td>작성자</td>
					<td><input type="text" name="bName" size="50"></td>
				</tr>
				<tr>
					<td>제목</td>
					<td><input type="text" name="bTitle" size="50" value="Re : ${replyView.bTitle}"></td>
				</tr>
					<tr>
					<td>내용</td>
					<td>
						<textarea name="bContent" rows="30" cols="50">Re : ${replyView.bContent}</textarea>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<button type="button" onclick="location.href='list.do'">취소</button> &nbsp;&nbsp;
						<input type="submit" value="댓글작성완료">
					</td>
				</tr>
			</table>
		</form>
	</body>
</html>