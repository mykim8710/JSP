<%@ page import="java.util.Arrays" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%
	request.setCharacterEncoding("EUC-KR");
%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>가입결과</title>
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
		
		이름 : <%=name %><br/>
		성별 : 
		<%
			if(gender.equals("male")) {
				out.println("남성<br/>");
			} else {
				out.println("여성<br/>");
			}	
		%>
		아이디 : <%=id %><br/>
		비밀번호 : <%=pw %><br/>
		비밀번호 확인 : 
		<%
			if(pw.equals(pwConfirm)) {
				out.println("pwConfirm<br/>");
			} else {
				out.println("입력한 비밀번호가 다릅니다.");
				out.println("<a href = \"join.html\" > 뒤로가기</a><br/>");
			}
		%>
		주소 : <%=address %><br/>
		전화번호 : <%=tel %><br/>
		이메일주소 : <%=email %><br/>
		취미 : <%
				if(hobbys == null) {
					out.println("선택한 취미가 없습니다.");
				}else {
					out.println(Arrays.toString(hobbys));	
				} 
			%>
	</body>
</html>