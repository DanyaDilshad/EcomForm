<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home Page</title>

<link rel = "stylesheet" href = "css/bootstrap.min.css">
<link rel = "stylesheet" href = "css/bootstrap-grid.min.css">
<link rel = "stylesheet" href = "css/style.css">
</head>
<body>
	
	<div class = "container">
	
		<h1>Login Form:</h1>
		<form action = "Login" method = "post" class = "myForm" >
		
			Enter User Name: <input type ="text" class="form-control" name = "user_name"><br>
			Enter Password: <input type ="password" class="form-control" name = "user_password"><br>
			<div><input type = "submit" value = "Login" class="btn btn-primary"></div>
		
		</form>
		
		
	</div>
	<div class = "container"><a href = "register.jsp"><button class="btn btn-outline-primary">New User?</button></a></div>
	
	
</body>
</html>