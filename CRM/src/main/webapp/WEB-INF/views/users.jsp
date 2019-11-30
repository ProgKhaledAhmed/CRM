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
		<title>Users</title>
	</head>
	<body>
		<%@include file="head.html"%>
	<div class="container" style="margin-top: 70px;">
		
		<div class="panel panel-default">
			<!-- Default panel contents -->
			<div class="panel-heading clearfix">
				<h4 class="panel-title pull-left" style="padding-top: 7px;">Users list</h4>
				<div class="pull-right">
					<%-- <input type="submit" value="<spring:message text="Save"/>" class="btn btn-default btn-sm btn-success"/>
<!-- 					<a href="#" class="btn btn-default btn-sm btn-success">Save</a> -->
					<!-- <a href="#" class="btn btn-default btn-sm">## Delete</a> -->
					<a href="#" class="btn btn-default btn-sm btn-danger glyphicon glyphicon-search"> Cancel</a> --%>
					<button type="submit" class="btn btn-success glyphicon glyphicon-plus"> New</button>
				</div>
			</div>
			<div class="panel-body">
			<c:url var="addAction" value="/findUsers"></c:url>
			<form:form action="${addAction}" commandName="user">
					<h4>Search users</h4>
				  	<div class="form-group row">
					    <div class="col-sm-3">
					      <form:input type="text" path="firstname" cssClass="form-control" id="staticEmail" placeholder="Firstname"/>
					    </div>
				     <div class="col-sm-3">
				     	<form:input type="text" path="lastname" cssClass="form-control" id="staticEmail" placeholder="Lastname"/>
				     </div>
				     <div class="col-sm-3">
				     	<form:input type="text" path="username" cssClass="form-control" id="staticEmail" placeholder="Username"/>
				     </div>
				     <div class="col-sm-3">
				     	<form:input type="email" path="email" cssClass="form-control" id="staticEmail" placeholder="E-mail"/>
				     </div>
				  </div>
				  <div class="form-group row">
				    <div class="col-sm-3">
				      <form:input path="age" type="number" cssClass="form-control" id="staticEmail" placeholder="Age"/>
				    </div>
				    <div class="col-sm-3">
					    <form:select path="gender" id="inputState" cssClass="form-control">
					        <option selected>Gender...</option>
					        <option>Male</option>
					        <option>Female</option>
						</form:select>
				     </div>
				     <div class="col-sm-3">
				     	<form:input type="text" path="telephone" cssClass="form-control" id="staticEmail" placeholder="Telephone"/>
				     </div>
				     <div class="col-sm-3">
				     	<form:select path="type" id="inputState" cssClass="form-control">
					        <option selected>Type...</option>
					        <option>User</option>
					        <option>DBA</option>
					        <option>Admin</option>
					        <option>Manager</option>
					        <option>Data Entry</option>
					        <option>...</option>
					    </form:select>
				     </div>
				  </div>
				  <div class="d-flex pull-right">
					  <input type="submit" value="Search" class="btn btn-primary glyphicon glyphicon-search"/>
					  <br><br>
				  </div>
				</form:form>
				<br>
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