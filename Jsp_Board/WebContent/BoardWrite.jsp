<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<title>새글 작성</title>
		<meta charset="EUC-KR">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
	</head>
	
	<body>
		<form action="write.do" method="post">
			<div class="container">
				<div class="table-responsive">
					<h1 style="text-align: center;">New Article</h1>
					<hr>
					<div class="form-group">
						<label for="usr">Writer : </label> 
						<input type="text" class="form-control" id="usr" name="bName">
					</div>
			
					<div class="form-group">
						<label for="usr">Title :</label> 
						<input type="text" class="form-control" id="usr" name="bTitle">
					</div>
					
					<div class="form-group">
						<label for="comment">Comment:</label>
						<textarea class="form-control" rows="10" id="comment" name="bContent"></textarea>
					</div>
								
					<div>
						<button class="btn btn-primary" type="submit">submit</button>&nbsp;&nbsp;
						<button class="btn btn-primary" type="reset">reset</button>&nbsp;&nbsp;
						<button class="btn btn-primary" type="button"onclick="location.href='list.do'">list</button>
					</div>
				</div>
			</div>
		</form>
	</body>
</html>