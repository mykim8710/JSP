<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>JSP ������ ������� ����</title>
	</head>

	<body>
		<h3>������ ���</h3>
		<table border="1">
			<%
				for (int i = 0; i <= 9; i++) {
					out.println("<tr>");
					for (int j = 2; j < 10; j++) {
						if (i == 0) {
							out.println("<td>" + j + "��</td>");
						} else {
							out.println("<td>" + j + " x " + i + " = " + (j * i) + "</td>");
						}
					}
					out.println("</tr>");
				}
			%>
		</table>
	</body>

</html>