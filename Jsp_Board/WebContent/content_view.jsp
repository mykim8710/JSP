<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>�� ���� Ȯ��</title>
	</head>
	
	<body>
		<h1>#${contentView.bId}�� �� Ȯ��</h1>
		
		<form action="modify_view.do" method="post">
			<input type="hidden" name = bId value="${contentView.bId}">	
			<table border="1">
				<tr>
					<td>�Խù� ��ȣ</td>
					<td>#${contentView.bId}</td>
				</tr>
				<tr>	
					<td>��ȸ��</td>
					<td>${contentView.bHit}</td>
				</tr>
				<tr>
					<td>�ۼ���</td>
					<td>${contentView.bName}</td>
				</tr>
				<tr>
					<td>�ۼ��Ͻ�</td>
					<td>${contentView.bDate}</td>
				</tr>
				<tr>
					<td>����</td>
					<td>${contentView.bTitle}</td>
				</tr>
				<tr>
					<td>����</td>
					<td width="500" height="300">${contentView.bContent}</td>
				</tr>
				<tr>
					<td colspan="2">
						<input type="submit" value="�� ����"> &nbsp;&nbsp;
						<button type="button" onclick="location.href='reply_view.do?bId=${contentView.bId}'">���</button> &nbsp;&nbsp;
						<button type="button" onclick="location.href='delete.do?bId=${contentView.bId}'">����</button>&nbsp;&nbsp;
						<button type="button" onclick="location.href='list.do'">�۸��</button> 
					</td>
				</tr>
			</table>
		</form>
	</body>
</html>