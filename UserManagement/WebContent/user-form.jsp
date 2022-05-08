<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Management Application</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity = "sha384-ggOyROiXCbMQv3Xipm34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>
<body>
	
	<header>
		<nav class="navbar navbar-expannd-md navbar-dark" 
			 style = "background-color: blue">
			<div>
			<a href="http://www.xadmin.net" class="navbar-brand">Customer Management</a>
			</div>
			
			<ul class="navbar-nav">
				<li> <a href="<%=request.getContextPath()%>/list"
						class="nav-link"> User </a>
				</li>
			</ul>
		</nav>
	</header>
	<br>
	<div class="container col-md-5">
		<div class="card">
			<div class="card-body">
				<c:if test="${user != null}">
					<form action="update" method="post">
				</c:if>
				<c:if test="${user == null}">
					<form action="insert" method="post">
				</c:if>
				
				
				<caption>
					<h2>
						<c:if test="${user != null}">
						Edit User
						</c:if>
						<c:if test="${user == null}">
						Add New User
						</c:if>
					</h2>
				</caption>
				
				
				<c:if test="${user != null}">
					<input type="hidden" name ="cid" value="<c:out value='${user.cid}'/>"/>
				</c:if>
				
				<fieldset class="form-group">
					<label> First Name </label>
					<input type ="text"
						   value="<c:out value='${user.firstName}' />"
						   class="form-control"
						   name="firstname"
						   required="required">
				</fieldset>
				
				<fieldset class="form-group">
					<label> Middle Name </label>
					<input type ="text"
						   value="<c:out value='${user.middleName}' />"
						   class="form-control"
						   name="middlename"
						   required="required">
				</fieldset>
				
				<fieldset class="form-group">
					<label> Last Name </label>
					<input type ="text"
						   value="<c:out value='${user.lastName}' />"
						   class="form-control"
						   name="lastname"
						   required="required">
				</fieldset>
				
				<fieldset class="form-group">
					<label> Email </label>
					<input type ="text"
						   value="<c:out value='${user.email}' />"
						   class="form-control"
						   name="email"
						   required="required">
				</fieldset>
				
				<fieldset class="form-group">
					<label> Address Line 1 </label>
					<input type ="text"
						   value="<c:out value='${user.addline1}' />"
						   class="form-control"
						   name="addLine1"
						   required="required">
				</fieldset>
				
				<fieldset class="form-group">
					<label> Address Line 2 </label>
					<input type ="text"
						   value="<c:out value='${user.addline2}' />"
						   class="form-control"
						   name="addLine2">
				</fieldset>
				
				<fieldset class="form-group">
					<label> Address Line 3 </label>
					<input type ="text"
						   value="<c:out value='${user.addline3}' />"
						   class="form-control"
						   name="addLine3">
				</fieldset>
				
				<fieldset class="form-group">
					<label> Passport Number or NIC</label>
					<input type ="text"
						   value="<c:out value='${user.passport}' />"
						   class="form-control"
						   name="passport"
						   required="required">
				</fieldset>
				
				<fieldset class="form-group">
					<label> Country </label>
					<input type ="text"
						   value="<c:out value='${user.nationlity}' />"
						   class="form-control"
						   name="nationlity"
						   required="required">
				</fieldset>
				
				<button type="submit" class="btn btn-success"> Save </button>
				</form>
			</div>
		</div>
	</div>
</body>
</html>