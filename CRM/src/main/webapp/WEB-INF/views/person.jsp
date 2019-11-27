
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
	<div class="container">
		<div class="panel panel-default">
		<!-- Default panel contents -->
			<div class="panel-heading">Add New Person
					<%-- <input type="submit" value="<spring:message text="Add Person"/>" class="btn btn-primary" /> --%>
			</div>
				<div class="panel-body">
					<c:url var="addAction" value="/person/add"></c:url>
					<form:form action="${addAction}" commandName="person">
						<div class="form-row">
							<c:if test="${!empty person.name}">
								<div class="form-group col-md-4">
									<form:input type="text" path="id" cssClass="form-control" readonly="true" size="8" disabled="true"/>
									<form:hidden path="id" />
								</div>
							</c:if>
							<div class="form-group col-md-4">
								<form:input type="text" path="name" cssClass="form-control" placeholder="Name"/>
							</div>
							<div class="form-group col-md-4">
								<form:input type="text" path="country" cssClass="form-control" placeholder="Country"/>
							</div>
						</div>
						<div class="form-row">
							<c:if test="${!empty person.name}">
								<div class="orm-group col-md-4">
									<input type="submit" value="<spring:message text="Edit Person"/>" class="btn btn-success" />		
								</div>
							</c:if>
							<c:if test="${empty person.name}">
								<div class="orm-group col-md-4">
									<input type="submit" value="<spring:message text="Add Person"/>" class="btn btn-success" />
								</div>
							</c:if>
							<div class="orm-group col-md-4"></div>
						</div>
					</form:form>
			</div>
		</div>
		<div class="panel panel-default">
			<!-- Default panel contents -->
			<div class="panel-heading">Persons List</div>
				<div class="panel-body">
				<c:if test="${!empty listPersons}">
				<table class="table">
					<tr>
						<th scope="col" width="100">Person ID</th>
						<th scope="col" width="120">Person Name</th>
						<th scope="col" width="120">Person Country</th>
						<th scope="col" width="60">Edit</th>
						<th scope="col" width="60">Delete</th>
					</tr>
					<c:forEach items="${listPersons}" var="person">
						<tr>
							<td scope="row">${person.id}</td>
							<td>${person.name}</td>
							<td>${person.country}</td>
							<td><a href="<c:url value='/edit/${person.id}' />"><i class="glyphicon glyphicon-pencil"></i></a></td>
							<td><a href="<c:url value='/remove/${person.id}' />"><i class="glyphicon glyphicon-trash"></i></a></td>
						</tr>
					</c:forEach>
				</table>
				</c:if>
				</div>
			</div>
	</div>
</body>
</html>
