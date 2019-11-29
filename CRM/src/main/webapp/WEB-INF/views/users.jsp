<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="false"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
		<title>Insert title here</title>
	</head>
	<body>
		<%@include file="head.html"%>
	<div class="container" style="margin-top: 70px;">
		
		<div class="panel panel-default">
			<!-- Default panel contents -->
			<div class="panel-heading clearfix">
				<h4 class="panel-title pull-left" style="padding-top: 7px;">Users list</h4>
				<div class="btn-group pull-right">
					<input type="submit" value="<spring:message text="Save"/>" class="btn btn-default btn-sm btn-success"/>
<!-- 					<a href="#" class="btn btn-default btn-sm btn-success">Save</a> -->
					<!-- <a href="#" class="btn btn-default btn-sm">## Delete</a> -->
					<a href="#" class="btn btn-default btn-sm btn-danger">Cancel</a>
				</div>
			</div>
			<div class="panel-body">
				<c:if test="${!empty listUsers}">
					<table class="table">
						<tr>
							<th scope="col" width="100">First name</th>
							<th scope="col" width="120">Last name</th>
							<th scope="col" width="120">User name</th>
							<th scope="col" width="60">E-mail</th>
							<th scope="col" width="80">Gender</th>
						</tr>
						<c:forEach items="${listUsers}" var="user">
							<tr>
								<td scope="row">${user.firstname}</td>
								<td>${user.lastname}</td>
								<td>${user.username}</td>
								<td>
									<div class="col-xs-4 col-centered">
										<a href="<c:url value='/edit/${user.id}' />">
											<i class="glyphicon glyphicon-pencil"></i>
										</a>
									</div>
								</td>
								<td>
									<div class="col-xs-4 col-centered">
										<a href="<c:url value='/remove/${user.id}' />">
											<i class="glyphicon glyphicon-trash"></i>
										</a>
									</div>
								</td>
							</tr>
						</c:forEach>
					</table>
				</c:if>
			</div>
		</div>
	</div>
	</body>
</html>