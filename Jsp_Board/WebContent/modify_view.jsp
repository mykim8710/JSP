<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>�Խñ� ���� ������</title>
	</head>
	
	<body>
		<h1>${modifyView.bId}���� ���� ������</h1>
		<form action="modify.do" method="post">
			<input type="hidden" name="bId" value="${modifyView.bId}">
			<table border="1">
				<tr>
					<td>�Խù� ��ȣ</td>
					<td>#${modifyView.bId}</td>
				</tr>
				<tr>
					<td>�ۼ���</td>
					<td>${modifyView.bName}</td>
				</tr>
				<tr>
					<td>�ۼ��Ͻ�</td>
					<td>${modifyView.bDate}</td>
				</tr>
				<tr>
					<td>����</td>
					<td><input type="text" name="bTitle" size="50" value="modify : ${modifyView.bTitle}"></td>
				</tr>
					<tr>
					<td>����</td>
					<td>
						<textarea name="bContent" rows="30" cols="50">modify : ${modifyView.bContent}</textarea>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<button type="button" onclick="location.href='list.do'">�������</button> &nbsp;&nbsp;
						<input type="submit" value="�����Ϸ�">
					</td>
				</tr>
			</table>
		</form>
	</body>
</html>