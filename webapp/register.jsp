<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home Page</title>
<link rel = "stylesheet" href = "css/bootstrap.min.css">
<link rel = "stylesheet" href = "css/style.css">

</head>
<body>
	<div>
	</div>
	<div class="container">
		<form class = "myForm" action = "Register" method = "post">
		
	
		<div>
			<h2>Registration Form:</h2>
			<input type = "submit" value = "Not new?" class="btn btn-sm btn-outline-secondary">
		</div>
		
		
		
		<div class="mb-3"> 
			<label>Enter User Name: </label>
			<input type ="text"  class="form-control"  name = "uname">
		</div>
		
		<div class="mb-3"> 
			<label>Enter Password: </label>
			<input type ="password" class="form-control" name = "passw">
		</div>
		
		<div class="mb-3"> 
			<label>Enter Full Name:</label> 
			<input type ="text" class="form-control" name = "full_name">
		</div>
		
		<div class="mb-3"> 
			<label>Enter Mail: </label>
			<input type ="text" class="form-control" name = "user_mail">
		</div>
		
		<div class="mb-3"> 
			<label>Enter Phone Number: </label>
			<input type ="text" class="form-control" name = "phone">
		</div>
		
		<div class="mb-3"> 
			<label>Enter Address: </label>
			<input type ="text" class="form-control" name = "addr">
		</div>
		
		
		<input type = "submit" value = "Register" class="btn btn-primary">
		
	
	</form>
	
	</div>
</body>
</html>