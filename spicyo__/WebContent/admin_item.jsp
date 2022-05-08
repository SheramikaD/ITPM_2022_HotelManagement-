<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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

<body style="background-color:#5b9aa0;">
	<header>
		<nav class="navbar navbar-expand-md navbar-dark"
			style="background-color: #622569">
			<div>
				<a href="https://www.javaguides.net" class="navbar-brand"> Administrator Panel </a>
			</div>
		
		</nav>
	</header><br>
	<div class="container col-md-5">
		<div class="card" style="width: 26rem;" )>
			<div class="card-body">
	
    <h2>Add Food Items </h2><br>
    
        <form action="ItemServlet" method="post" >
        <table>
        <tr>
        <td>Food ID</td> 
        <td><input type="text" name="item_id" value="${item.item_id}" required="required"></td>
        </tr>
        <tr>
        <td>Food Item Name</td>
        <td> <input type="text" name="item_name" value="${item.item_name}" required="required"></td>
        </tr>
        <tr>
        <td>Prices LKR</td> 
        <td><input type="text" name="price" value="${item.price}" required="required"></td>
        </tr>
        
       
       
       
        
        </table>
        <input type="submit"  style="background-color:black; name="submit" value="Save" class="btn btn-success">
	    <input type="hidden" value="${item.id}" name="id">
        </form>
	

</body>
</html> 