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
		<!-- Modal -->
	<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
	  <div class="modal-dialog modal-dialog-centered" role="document">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h4 class="modal-title" id="exampleModalCenterTitle">New User</h4>
	        <!-- <button type="button" class="close" data-dismiss="modal" aria-label="Close">
	          <span aria-hidden="true">&times;</span>
	        </button> -->
	      </div>
	      <div class="modal-body">
	      <!--  class="modal-body pre-scrollable" -->
	      <c:url var="addAction" value="/users/add"></c:url>
	       <form:form action="${addAction}" commandName="user" class="md-form overflow-auto">
	       	<div class="form-group row">
	       		<div class="col-sm-4">
		       <div class="file-field">
				   <div class="mb-4">
				     <img src="https://mdbootstrap.com/img/Photos/Others/placeholder-avatar.jpg" 
				     	  class="rounded-circle z-depth-1-half avatar-pic" alt="example placeholder avatar" width="150" height="150">
				   </div>
<!-- 				   <div class="d-flex justify-content-center">
				     <div class="btn btn-mdb-color btn-rounded float-left">
				       <span>Add photo</span>
				       <input type="file">
				     </div>
				   </div> -->
				 </div>
				 </div>
				 <div class="col-sm-8">
				 		<label for=inputUsername>Username</label>
				     	<form:input type="text" path="username" cssClass="form-control" id="inputUsername" placeholder="Enter your username"/><br>
				     	
				     	<label for="inputEmail">Email address</label>
				     	<form:input type="email" path="email" cssClass="form-control" id="inputEmail" placeholder="Enter your e-mail"/>
				     </div>
				</div>
				  	<div class="form-group row">
					    <div class="col-sm-6">
					    	<label for=inputFirstname>Firstname</label>
					      <form:input type="text" path="firstname" cssClass="form-control" id="inputFirstname" placeholder="Your firstname"/>
					    </div>
				     <div class="col-sm-6">
				     <label for=inputLastname>Lastname</label>
				     	<form:input type="text" path="lastname" cssClass="form-control" id="inputLastname" placeholder="Your lastname"/>
				     </div>
				     </div>
				  <div class="form-group row">
					    <div class="col-sm-6">
					    <label for=inputPassword>Your password</label>
					      <form:input type="password" path="password" cssClass="form-control" id="inputPassword" placeholder="Enter password"/>
					    </div>
				     <div class="col-sm-6">
				     <label for=inputPassword>Your password again</label>
				     	<form:input type="password" path="password" cssClass="form-control" id="staticPassword" placeholder="Confirm password"/>
				     </div>
				     </div>
				  <div class="form-group row">
				    <div class="col-sm-6">
				    <label for=inputAge>Age</label>
				      <form:input path="age" type="number" cssClass="form-control" id="inputAge" placeholder="Enter your age"/>
				    </div>
				    <div class="col-sm-6">
				    <label for=inputGender>Gender</label>
					    <form:select path="gender" id="inputGender" cssClass="form-control">
					        <option selected>Select gender...</option>
					        <option>Male</option>
					        <option>Female</option>
						</form:select>
				     </div>
				     </div>
				     <div class="form-group row">
				     <div class="col-sm-6">
				     <label for=inputTelephone>Phone number</label>
				     	<form:input type="text" path="telephone" cssClass="form-control" id="inputTelephone" placeholder="Enter a phone number"/>
				     </div>
				     <div class="col-sm-6">
				     <label for=inputType>User type</label>
				     	<form:select path="type" id="inputType" cssClass="form-control">
					        <option selected>Enter your type...</option>
					        <option>User</option>
					        <option>DBA</option>
					        <option>Admin</option>
					        <option>Manager</option>
					        <option>Data Entry</option>
					        <option>...</option>
					    </form:select>
				     </div>
				  </div>
				  <div class="form-group row">
				     <div class="col-sm-6">
				     	<label for=inputBirthdate>Birth date</label>
				     	<form:input type="date" path="birthdate" cssClass="form-control" id="inputBirthdate" placeholder="Birthdate"/>
				     </div>
				  </div>
			  	      <div class="modal-footer">
				        <button type="button" class="btn btn-danger" data-dismiss="modal">Cancel</button>
				        <button type="submit" class="btn btn-primary">Save</button>
				      </div>
				</form:form>
	      </div>
	    </div>
	  </div>
	</div>
	
	<!-- Modal -->
	<div class="modal fade" id="deleteConfirmation" tabindex="-1" role="dialog" aria-labelledby="deleteConfirmationModalLabel" aria-hidden="true">
	  <div class="modal-dialog modal-dialog-centered" role="document">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h5 class="modal-title" id="deleteConfirmationModalLabel">Modal title</h5>
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
	          <span aria-hidden="true">&times;</span>
	        </button>
	      </div>
	      <div class="modal-body">
	      You are about to delete this item, Continue?
	        <c:url var="deleteUser" value="/removeUser/${user.id}"></c:url>
	       <form:form action="${deleteUser}" commandName="user" class="md-form overflow-auto">
		      	<div class="modal-footer">
			        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
			        <button type="submit" class="btn btn-primary">Confirm</button>
	      	</div>
	      </form:form>
	      </div>
	    </div>
	  </div>
	</div>
		<div class="panel panel-default">
			<!-- Default panel contents -->
			<div class="panel-heading clearfix">
				<h4 class="panel-title pull-left" style="padding-top: 7px;">Users list</h4>
				<div class="pull-right">
					<%-- <input type="submit" value="<spring:message text="Save"/>" class="btn btn-default btn-sm btn-success"/>
<!-- 					<a href="#" class="btn btn-default btn-sm btn-success">Save</a> -->
					<!-- <a href="#" class="btn btn-default btn-sm">## Delete</a> -->
					<a href="#" class="btn btn-default btn-sm btn-danger glyphicon glyphicon-search"> Cancel</a> --%>
					<button type="submit" class="btn btn-success glyphicon glyphicon-plus" data-toggle="modal" data-target="#exampleModalCenter"> New</button>
				</div>
			</div>
			<div class="panel-body">
			<c:url var="searchAction" value="/findUsers"></c:url>
			<form:form action="${searchAction}" commandName="user">
					<h4>Search users</h4>
				  	<div class="form-group row">
					    <div class="col-sm-3">
					      <form:input type="text" path="firstname" cssClass="form-control" id="staticEmail" placeholder="Firstname"/>
					    </div>
				     <div class="col-sm-3">
				     	<form:input type="text" path="lastname"  value="" cssClass="form-control" id="staticEmail" placeholder="Lastname"/>
				     </div>
				     <div class="col-sm-3">
				     	<form:input type="text" path="username"  value="" cssClass="form-control" id="staticEmail" placeholder="Username"/>
				     </div>
				     <div class="col-sm-3">
				     	<form:input type="email" path="email" value="" cssClass="form-control" id="staticEmail" placeholder="E-mail"/>
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
							<th scope="col" width="30">Edit</th>
							<th scope="col" width="30">Delete</th>
						</tr>
						<c:forEach items="${listUsers}" var="user">
							<tr>
								<td scope="row">${user.firstname}</td>
								<td>${user.lastname}</td>
								<td>${user.username}</td>
								<td>${user.email}</td>
								<td>${user.gender}</td>
								<td>
									<div class="col-xs-4 col-centered">
										<%-- <a href="<c:url value='/editUser/${user.id}' />">
											<i class="glyphicon glyphicon-pencil"></i>
										</a> --%>
										<a href="#exampleModalCenter" data-toggle="modal" data-target="#exampleModalCenter">
											<i class="glyphicon glyphicon-pencil"></i>
										</a>
									</div>
								</td>
								<td>
									<div class="col-xs-4 col-centered">
										<a href="#deleteConfirmation" data-toggle="modal" data-target="#deleteConfirmation">
										<%-- <a href="<c:url value='/removeUser/${user.id}' />"> --%>
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