<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Welcome</title>
</head>
<body>
	<%@include file="header.html"%>
	<div class="container">
		<div class="col-md-offset-1 col-md-10">
			<h2>CRM - Customer Relationship Manager</h2>
			<hr />
			<table align="center">
				<tr>
					<td><input type="button" value="Login"
						onclick="window.location.href='persons'; return false;"
						class="btn btn-primary" /></td>
					<td></td>
					<td><input type="button" value="Register"
						onclick="window.location.href='persons'; return false;"
						class="btn btn-primary" /></td>
				</tr>
			</table>
		</div>
	</div>
</body>
</html>