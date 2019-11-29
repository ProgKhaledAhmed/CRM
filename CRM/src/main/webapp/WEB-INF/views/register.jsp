<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta name="viewport" content="width=device-width, initial-scale=1">		
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
		<title>CRM - Welcome</title>
	</head>
<body>
	<%@include file="head.html"%>
	<div class="container"  style="margin-top: 50px;">
		<h2>Register to CRM</h2>
		<hr />
	</div>
	<div class="container" style="width: 300px;">
		
		<form>
		<div class="align-self-center">
			<div class="row">
				<div class="form-group col-md-12" required autofocus>
					<label for="exampleInputEmail1">Email address</label>
					<input type="email" class="form-control" id="exampleInputEmail1"
						aria-describedby="emailHelp" placeholder="Enter email">
				</div>
			</div>
			<div class="row">
				<div class="form-group col-md-12" required autofocus>
					<label for="exampleInputEmail1">Email address</label>
					<input type="email" class="form-control" id="exampleInputEmail1"
						aria-describedby="emailHelp" placeholder="Enter email">
				</div>
			</div>
			<div class="row">
				<div class="form-group col-md-12">
					<label for="exampleInputPassword1">Password</label> <input
						type="password" class="form-control" id="exampleInputPassword1"
						placeholder="Password">
				</div>
			</div>
			<div class="row">
				<div class="form-group col-md-12">
					<label for="exampleInputPassword1">Password</label> <input
						type="password" class="form-control" id="exampleInputPassword1"
						placeholder="Password">
				</div>
			</div>
			<div class="row">
				<div class="form-group col-md-12">
					<button type="submit" class="btn btn-lg btn-success btn-block">Register</button>
				</div>
			</div>
			</div>
		</form>
	</div>
</body>
</html>