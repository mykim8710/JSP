<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>�Խ���</title>
</head>
<body>
	<h1>�Խ���</h1>
	<table width="800"  height="200"  border="1">
		<tr>
			<td>�Խù� ��ȣ</td>
			<td>�ۼ���</td>
			<td>����</td>
			<td>�ۼ���</td>
			<td>��ȸ��</td>
		</tr>
		<c:forEach items="${list}" var="dto">
			<tr>
				<td>#${dto.bId}</td>
				<td>${dto.bName}</td>
				<td><c:forEach begin="1" end="${dto.bIndent}">��</c:forEach><a href="content_view.do?bId=${dto.bId}">${dto.bTitle}</a></td>
				<td>${dto.bDate}</td>
				<td>${dto.bHit}</td>
			</tr>
		</c:forEach>
		<tr>
			<td colspan="5"><a href="write_view.do">�����ۼ�</a></td>
		</tr>
	</table>
</body>
</html>

