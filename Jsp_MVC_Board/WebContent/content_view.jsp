<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
		<title>��������</title>
	</head>

	<body>
		<h1>${content_view.bId}�� �� ������</h1>
		<table width="500" cellpadding="0" cellspacing="0" border="1">
			<tr>
				<td width="5">�Խù� ��ȣ</td>
				<td width="20">#${content_view.bId}</td>
			</tr>
			<tr>
				<td width="5">��ȸ��</td>
				<td width="20">${content_view.bHit}</td>
			</tr>
			<tr>
				<td width="5">�ۼ���</td>
				<td width="20">${content_view.bName}</td>
			</tr>
			<tr>
				<td width="5">����</td>
				<td width="20">${content_view.bTitle}</td>
			</tr>
			<tr>
				<td width="5">����</td>
				<td width="20" height="100">${content_view.bContent}</td>
			</tr>
			<tr>
				<td colspan="2">
					<a href="modify_view.do?bId=${content_view.bId}">�Խù� ����</a> &nbsp;&nbsp; 
					<a href="list.do">��Ϻ���</a> &nbsp;&nbsp; 
					<a href="delete.do?bId=${content_view.bId}">�Խù� ����</a> &nbsp;&nbsp; 
					<a href="reply_view.do?bId=${content_view.bId}">���</a>
				</td>
			</tr>
		</table>
	</body>
	
</html>