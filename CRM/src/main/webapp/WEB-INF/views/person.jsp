
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="false"%>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Person Page</title>
</head>
<body>
	<%@include file="head.html"%>
	<div class="container" style="margin-top: 70px;">
		<c:url var="addAction" value="/person/add"></c:url>
		<form:form action="${addAction}" commandName="person">
		<div class="panel panel-default">
			<div class="panel-heading clearfix">
				<h4 class="panel-title pull-left" style="padding-top: 7px;">Add New Person</h4>
				<div class="btn-group pull-right">
					<input type="submit" value="<spring:message text="Save"/>" class="btn btn-default btn-sm btn-success"/>
<!-- 					<a href="#" class="btn btn-default btn-sm btn-success">Save</a> -->
					<!-- <a href="#" class="btn btn-default btn-sm">## Delete</a> -->
					<a href="#" class="btn btn-default btn-sm btn-danger">Cancel</a>
				</div>
			</div>
			<div class="panel-body">
					<div class="form-row">
						<c:if test="${!empty person.name}">
							<div class="form-group col-md-4">
								<form:input type="text" path="id" cssClass="form-control" readonly="true" size="8" disabled="true" />
								<form:hidden path="id" />
							</div>
						</c:if>
						<div class="form-group col-md-4">
							<form:input type="text" path="name" cssClass="form-control" placeholder="Name" />
						</div>
						<div class="form-group col-md-4">
							<form:input type="text" path="country" cssClass="form-control" placeholder="Country" />
						</div>
					</div>
			</div>
		</div>
		</form:form>
		<div class="panel panel-default">
			<!-- Default panel contents -->
			<div class="panel-heading">Persons List</div>
			<div class="panel-body">
				<c:if test="${!empty listPersons}">
					<table class="table">
						<tr>
							<th scope="col" width="100">ID</th>
							<th scope="col" width="120">Name</th>
							<th scope="col" width="120">Country</th>
							<th scope="col" width="60">Edit</th>
							<th scope="col" width="80">Delete</th>
						</tr>
						<c:forEach items="${listPersons}" var="person">
							<tr>
								<td scope="row">${person.id}</td>
								<td>${person.name}</td>
								<td>${person.country}</td>
								<td>
									<div class="col-xs-4 col-centered">
										<a href="<c:url value='/edit/${person.id}' />">
											<i class="glyphicon glyphicon-pencil"></i>
										</a>
									</div>
								</td>
								<td>
									<div class="col-xs-4 col-centered">
										<a href="<c:url value='/remove/${person.id}' />">
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
