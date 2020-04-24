<%@page import="edu.bit.ex.*"%>
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
	<%	
		String query = "SELECT ename, hiredate FROM emp ORDER BY hiredate ASC";
		EmpDAO_CP daoCP = new EmpDAO_CP();
		ArrayList<EmpDTO> dtoList = daoCP.getDTO(query);

		for (int i = 0; i < dtoList.size(); i++) {
			EmpDTO dto = dtoList.get(i);
			String name = dto.getEname();
			String hireDate = dto.getHireDate();

			out.println(name + "  " + hireDate.substring(0, 10) + "</br>");
		}
	%>
</body>
</html>