<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>Insert title here</title>
	</head>
	<body>
		<h1>${modify_view.bId}�� �� ����������</h1>
		<form action="modify.do" method="post" >
			<input type="hidden" name="bId" value="${modify_view.bId}">
			<table width="500" cellpadding="0" cellspacing="0" border="1">
				<tr>
					<td>�Խù� ��ȣ</td>
					<td>${modify_view.bId}</td>
				</tr>
				<tr>
					<td>�ۼ���</td>
					<td>${modify_view.bName}</td>
				</tr>
				<tr>
					<td>����</td>
					<td><input type="text" name="bTitle" size="50"  value="${modify_view.bTitle}"></td>
				</tr>
				<tr>
					<td>����</td>
					<td><textarea name="bContent" rows="10" >${modify_view.bContent}</textarea></td>
				</tr>
				<tr>
					<td colspan="2">
						<input type="submit" value="�����Ϸ�">&nbsp;&nbsp;
						<a href="list.do">���</a></td>
				</tr>
			</table>
			
		</form>
	
	</body>
</html>