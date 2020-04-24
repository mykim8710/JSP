<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>게시글 수정 페이지</title>
	</head>
	
	<body>
		<h1>${modifyView.bId}번글 수정 페이지</h1>
		<form action="modify.do" method="post">
			<input type="hidden" name="bId" value="${modifyView.bId}">
			<table border="1">
				<tr>
					<td>게시물 번호</td>
					<td>#${modifyView.bId}</td>
				</tr>
				<tr>
					<td>작성자</td>
					<td>${modifyView.bName}</td>
				</tr>
				<tr>
					<td>작성일시</td>
					<td>${modifyView.bDate}</td>
				</tr>
				<tr>
					<td>제목</td>
					<td><input type="text" name="bTitle" size="50" value="modify : ${modifyView.bTitle}"></td>
				</tr>
					<tr>
					<td>내용</td>
					<td>
						<textarea name="bContent" rows="30" cols="50">modify : ${modifyView.bContent}</textarea>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<button type="button" onclick="location.href='list.do'">수정취소</button> &nbsp;&nbsp;
						<input type="submit" value="수정완료">
					</td>
				</tr>
			</table>
		</form>
	</body>
</html>