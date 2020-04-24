<%@page import="edu.bit.ex.EmpDAO"%>
<%@page import="edu.bit.ex.EmpDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>

<body>
	<table border="1" bordercolor="green">
		<tr>
			<td>Name</td>
			<td>HireDate</td>
		</tr>
		<%
			String query = "SELECT ename, hiredate FROM emp ORDER BY hiredate ASC";
			EmpDAO dao = new EmpDAO();
			ArrayList<EmpDTO> list = dao.getDTO(query);

			for (int i = 0; i < list.size(); i++) {

				EmpDTO dto = list.get(i);

				String name = dto.getEname();
				String hireDate = dto.getHireDate();

				out.println("<tr>");
				out.println("<td>" + name + "</td>");
				out.println("<td>" + hireDate.substring(0, 10) + "</td>");
				out.println("</tr>");
			}
		%>
	</table>
</body>
</html>