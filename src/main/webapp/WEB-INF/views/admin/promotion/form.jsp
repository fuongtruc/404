<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<title>Insert title here</title>
</head>
<body>
	<h1>FOrm</h1>
	<form action="addnewpromotion" method="post">
		<div class="form-group">
			<label for="promotion_id">ID</label> <input type="text"
				class="form-control" id="promotion_id" name="promotion_id" />
		</div>
		<div class="form-group">
			<label for="title">Title</label> <input type="text"
				class="form-control" id="title" name="title" />
		</div>
		<div class="form-group">
			<label for="value">value</label> <input type="text"
				class="form-control" id="value" name="value" />
		</div>
		<div class="form-group">
			<label for="valid_from">valid_from</label> <input
				type="datetime-local" class="form-control" id="valid_from"
				name="valid_from" />
		</div>
		<div class="form-group">
			<label for="valid_until">valid_until</label> <input
				type="datetime-local" class="form-control" id="valid_until"
				name="valid_until" />
		</div>
		<div class="form-group">
			<label for="active">Active</label> <input type="radio"
				class="form-control" id="active" name="active" />
		</div>
		<button type="submit" class="btn btn-primary">Submit</button>
	</form>
</body>
</html>

