<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>Insert title here</title>
	</head>

	<body>
		<form action="Circle.jsp">
			�� ���� ���� ��<br/>
			�������� �Է��ϼ��� :  <input type="text" name="radius" size="10">
					  		
					  		
					  		<select name="unit"> 
								<option value="mm">mm</option>
								<option value="cm">cm</option>
								<option value="m">m</option>
							</select>
							
							
					  		<input type="submit" value="Send">
					  		<input type="reset" value="Reset"><br/>
		</form>
		
		<form action="Triangle.jsp">
			<br/>
			�� �ﰢ���� ���� ��<br/>
			�غ��� �Է��ϼ��� :  <input type="text" name="width" size="10"><br/>
			������ �Է��ϼ��� :  <input type="text" name="height" size="10">
					  	   <select name="unit"> 
								<option value="mm">mm</option>
								<option value="cm">cm</option>
								<option value="m">m</option>
							</select>
					  	   <input type="submit" value="Send">
					  	   <input type="reset" value="Reset"><br/>
		</form>
		
		<form action="Rectangle.jsp">
			<br/>
			�� �簢���� ���� ��<br/>
			�غ��� �Է��ϼ��� :  <input type="text" name="width" size="10"><br/>
			������ �Է��ϼ��� :  <input type="text" name="height" size="10">
					  	   <select name="unit"> 
								<option value="mm">mm</option>
								<option value="cm">cm</option>
								<option value="m">m</option>
							</select>
					  	   <input type="submit" value="Send">
					  	   <input type="reset" value="Reset"><br/>
		</form>
	
	</body>
</html>