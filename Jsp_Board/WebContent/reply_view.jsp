<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>��۴ٴ� ������</title>
	</head>
	
	<body>
		<h1>${replyView.bId}���ۿ� ���� ��� ������</h1>
		<form action="reply.do" method="post">
			<input type="hidden" name="bGroup" value="${replyView.bGroup}">
			<input type="hidden" name="bStep" value="${replyView.bStep}">
			<input type="hidden" name="bIndent" value="${replyView.bIndent}">
			<table border="1">
				<tr>
					<td>�Խù� ��ȣ</td>
					<td>#${replyView.bId}</td>
				</tr>
				<tr>
					<td>�ۼ��Ͻ�</td>
					<td>${replyView.bDate}</td>
				</tr>
				<tr>
					<td>�ۼ���</td>
					<td><input type="text" name="bName" size="50"></td>
				</tr>
				<tr>
					<td>����</td>
					<td><input type="text" name="bTitle" size="50" value="Re : ${replyView.bTitle}"></td>
				</tr>
					<tr>
					<td>����</td>
					<td>
						<textarea name="bContent" rows="30" cols="50">Re : ${replyView.bContent}</textarea>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<button type="button" onclick="location.href='list.do'">���</button> &nbsp;&nbsp;
						<input type="submit" value="����ۼ��Ϸ�">
					</td>
				</tr>
			</table>
		</form>
	</body>
</html>