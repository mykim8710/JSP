<%@ page import="java.util.Arrays" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%
	request.setCharacterEncoding("EUC-KR");
%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>���԰��</title>
	</head>
	
	<body>
		<%!
			String name, gender, id, pw, pwConfirm, address, tel, email;
			String[] hobbys;
		%>
		<%
			name = request.getParameter("name");
			gender = request.getParameter("gender");
			id = request.getParameter("id");
			pw = request.getParameter("pw");
			pwConfirm = request.getParameter("pwConfirm");
			address = request.getParameter("address");
			tel = request.getParameter("tel");
			email = request.getParameter("email");
			hobbys = request.getParameterValues("hobby");
		%>
		
		�̸� : <%=name %><br/>
		���� : 
		<%
			if(gender.equals("male")) {
				out.println("����<br/>");
			} else {
				out.println("����<br/>");
			}	
		%>
		���̵� : <%=id %><br/>
		��й�ȣ : <%=pw %><br/>
		��й�ȣ Ȯ�� : 
		<%
			if(pw.equals(pwConfirm)) {
				out.println("pwConfirm<br/>");
			} else {
				out.println("�Է��� ��й�ȣ�� �ٸ��ϴ�.");
				out.println("<a href = \"join.html\" > �ڷΰ���</a><br/>");
			}
		%>
		�ּ� : <%=address %><br/>
		��ȭ��ȣ : <%=tel %><br/>
		�̸����ּ� : <%=email %><br/>
		��� : <%
				if(hobbys == null) {
					out.println("������ ��̰� �����ϴ�.");
				}else {
					out.println(Arrays.toString(hobbys));	
				} 
			%>
	</body>
</html>