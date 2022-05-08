<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
        
        <style>
        	h2 {
  text-align: center;
}


body {font-family: Arial, Helvetica, sans-serif;}
* {box-sizing: border-box;}

input[type=text], select, textarea {
  width: 100%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
  margin-top: 6px;
  margin-bottom: 16px;
  resize: vertical;
}

input[type=submit] {
  background-color: #45a049;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type=submit]:hover {
  background-color: #45a049;
}

.container {
  border-radius: 5px;
  background-color:#f2f2f2;
  padding: 15px 60px;
}

 </style>
        
  <title>Food Items</title>
</head>
<body>
	<header>
		<nav class="navbar navbar-expand-md navbar-dark"
			style="background-color: #622569">
			<div>
				<a href="https://www.javaguides.net" class="navbar-brand"> Administrator Panel</a>
			</div>
		
		</nav>
	</header><br>
	
	
    <h2>Added Food Item List</h2><br>
    
      <section class="resip_section">
        <div class="container">
            <div class="row">
               
                <div class="col-md-1">
         
        		</div>
        		<div class="col-md-10">
			     
         		<table  id="datatable" class="table table-dark">
					<thead>
							<tr >
								<th scope="col">Item ID</th>
				      			<th scope="col">Item</th>
				      			<th scope="col">Price</th>
				      			
								<th>Process</th>
							</tr>
					</thead>
					<tbody>		
						<c:forEach items="${list}" var="item">
							
							<tr>
								<td>${item.item_id}</td>
								<td>${item.item_name}</td>
								<td>${item.price}</td>
								
								<td>
								<div>
									<button class="btn btn-light">
										<a href = "${pageContext.request.contextPath}/ItemServlet?action=EDIT&id=${item.id}">Edit</a>
									</button> 
									<button class="btn btn-light">
										<a href = "${pageContext.request.contextPath}/ItemServlet?action=DELETE&id=${item.id}">Delete</a>
									</button> 
								</div>
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
        		</div>
        		<div class="col-md-1">
         
        		</div>
            </div>
        </div>
    </section> 

</body>
</html> 