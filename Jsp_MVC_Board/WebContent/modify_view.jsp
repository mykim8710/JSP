<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>Insert title here</title>
	</head>
	<body>
		<h1>${modify_view.bId}번 글 수정페이지</h1>
		<form action="modify.do" method="post" >
			<input type="hidden" name="bId" value="${modify_view.bId}">
			<table width="500" cellpadding="0" cellspacing="0" border="1">
				<tr>
					<td>게시물 번호</td>
					<td>${modify_view.bId}</td>
				</tr>
				<tr>
					<td>작성자</td>
					<td>${modify_view.bName}</td>
				</tr>
				<tr>
					<td>제목</td>
					<td><input type="text" name="bTitle" size="50"  value="${modify_view.bTitle}"></td>
				</tr>
				<tr>
					<td>내용</td>
					<td><textarea name="bContent" rows="10" >${modify_view.bContent}</textarea></td>
				</tr>
				<tr>
					<td colspan="2">
						<input type="submit" value="수정완료">&nbsp;&nbsp;
						<a href="list.do">취소</a></td>
				</tr>
			</table>
			
		</form>
	
	</body>
</html>