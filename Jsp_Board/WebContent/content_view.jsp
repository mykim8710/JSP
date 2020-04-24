<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>글 내용 확인</title>
	</head>
	
	<body>
		<h1>#${contentView.bId}번 글 확인</h1>
		
		<form action="modify_view.do" method="post">
			<input type="hidden" name = bId value="${contentView.bId}">	
			<table border="1">
				<tr>
					<td>게시물 번호</td>
					<td>#${contentView.bId}</td>
				</tr>
				<tr>	
					<td>조회수</td>
					<td>${contentView.bHit}</td>
				</tr>
				<tr>
					<td>작성자</td>
					<td>${contentView.bName}</td>
				</tr>
				<tr>
					<td>작성일시</td>
					<td>${contentView.bDate}</td>
				</tr>
				<tr>
					<td>제목</td>
					<td>${contentView.bTitle}</td>
				</tr>
				<tr>
					<td>내용</td>
					<td width="500" height="300">${contentView.bContent}</td>
				</tr>
				<tr>
					<td colspan="2">
						<input type="submit" value="글 수정"> &nbsp;&nbsp;
						<button type="button" onclick="location.href='reply_view.do?bId=${contentView.bId}'">댓글</button> &nbsp;&nbsp;
						<button type="button" onclick="location.href='delete.do?bId=${contentView.bId}'">삭제</button>&nbsp;&nbsp;
						<button type="button" onclick="location.href='list.do'">글목록</button> 
					</td>
				</tr>
			</table>
		</form>
	</body>
</html>