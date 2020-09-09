<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<title>Insert title here</title>
</head>
<body>
	<h1>FOrm</h1>
	<form:form action="updatePromotion" method="post" modelAttribute="getPromotion">
		<div class="form-group">
			<label for="title">Title</label> <form:input type="text"
				class="form-control" id="title"  path="title"/>
		</div>
		<div class="form-group">
			<label for="value">value</label> <form:input type="text"
				class="form-control" id="value"  path="value" />
		</div>
		<div class="form-group">
			<label for="valid_from">valid_from</label> <form:input
				type="datetime-local" class="form-control" id="valid_from"
				 path="valid_from"/>
		</div>
		<div class="form-group">
			<label for="valid_until">valid_until</label> <form:input
				type="datetime-local" class="form-control" id="valid_until"
				 path="valid_until" />
		</div>
		<div class="form-group">
			<label for="active">Active</label> <form:radiobutton
				class="form-control" id="active"  path="active" />
		</div>
		<button type="submit" class="btn btn-primary">Submit</button>
	</form:form>
</body>
</html>