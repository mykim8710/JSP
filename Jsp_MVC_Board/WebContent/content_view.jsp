<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
		<title>글페이지</title>
	</head>

	<body>
		<h1>${content_view.bId}번 글 페이지</h1>
		<table width="500" cellpadding="0" cellspacing="0" border="1">
			<tr>
				<td width="5">게시물 번호</td>
				<td width="20">#${content_view.bId}</td>
			</tr>
			<tr>
				<td width="5">조회수</td>
				<td width="20">${content_view.bHit}</td>
			</tr>
			<tr>
				<td width="5">작성자</td>
				<td width="20">${content_view.bName}</td>
			</tr>
			<tr>
				<td width="5">제목</td>
				<td width="20">${content_view.bTitle}</td>
			</tr>
			<tr>
				<td width="5">내용</td>
				<td width="20" height="100">${content_view.bContent}</td>
			</tr>
			<tr>
				<td colspan="2">
					<a href="modify_view.do?bId=${content_view.bId}">게시물 수정</a> &nbsp;&nbsp; 
					<a href="list.do">목록보기</a> &nbsp;&nbsp; 
					<a href="delete.do?bId=${content_view.bId}">게시물 삭제</a> &nbsp;&nbsp; 
					<a href="reply_view.do?bId=${content_view.bId}">댓글</a>
				</td>
			</tr>
		</table>
	</body>
	
</html>