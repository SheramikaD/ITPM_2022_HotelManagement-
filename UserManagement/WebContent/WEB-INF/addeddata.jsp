<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer Management </title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity = "sha384-ggOyROiXCbMQv3Xipm34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>
<body>
	
		<header>
			<nav class="navbar navbar-expand-md navbar-dark"
				 style="background-color: blue">
				 <div>
				 	<a href="http://www.xadmin.net" class = "navbar-brand"> Customer Management</a>
				 </div>
				 <ul class="navbar-nav">
				 	<li> <a href="<%=request.getContextPath()%>/list"
				 		class="nav-link"> Users List </a> </li>				 		
				 </ul>
			</nav>
		</header>
		<br>
		
		<div class ="row">
			<!-- <div class = "alert alert-success" *ngIf ='message'> {{message}} </div> -->
			
			<div class="container">
				<h3 class="test-center"> List of Users</h3>
				<hr>
				<div class="container text-left">
					<a href="<%=request.getContextPath()%>/new" class="btn btn-success"> Add New User</a>
				</div>
				<br>
				<table class = "table table-bordered">
					<thead>
						<tr>
							<th>ID</th>
							<th>First Name</th>
							<th>Last Name</th>
							<th>Passport</th>
							<th>Action</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>1</td>
							<td>dula</td>
							<td>godahe</td>
							<td>445</td>
							
							<td><a> Edit </a> &nbsp;&nbsp;&nbsp;&nbsp; 
								<a>"> Delete </a></td>
						</tr>
							
					</tbody>
				</table>
				
			</div>
		</div>

</body>
</html>