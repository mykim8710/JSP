<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
	<head>
		<title>게시판입니다.</title>
	 	<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
	
		<style type="text/css">
			thead {
				text-align: center;
				font-weight: bolder;
				background-color:rgb(0,123,255);
				color:white;
			}
			
			.center {
				text-align: center;
			}
		</style>
	</head>
	
	<body>
		<div class="container">
		<h1 style="text-align: center;">Board</h1>
		<hr>
			<div class="table-responsive">
				<table class="table table-striped">
					<thead>
						<tr>
							<th>No.</th>
							<th>Title</th>
							<th>Writer</th>
							<th>Date</th>
							<th>Hit</th>
						</tr>
					</thead>
					
					<tbody>
						<c:forEach items="${dtoList}" var="dto">
							<tr>
								<td class="center">#${dto.bId}</td>
								<td>
									<c:forEach begin="1" end ="${dto.bIndent}">└</c:forEach>
									<a href="content_view.do?bId=${dto.bId}">${dto.bTitle}</a>
								</td>
								<td class="center">${dto.bName}</td>
								<td class="center">${dto.bDate}</td>
								<td class="center">${dto.bHit}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				
				<button class="btn btn-primary" type="button" onclick="location.href='write_view.do'">new</button>
			</div>
		</div>
	</body>
</html>