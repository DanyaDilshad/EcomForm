<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Shop</title>
<link rel = "stylesheet href" href = "css/bootstrap.min.css">
<link rel = "stylesheet" href = "css/style.css">
</head>
<body>
	<%
		if(session.getAttribute("uname")==null){
			response.sendRedirect("login.jsp");
		}

	%>
	<div class = "container">
	<div><h2>Welcome ${uname}</h2></div>
	
	<div>
	<form action = "details.jsp" > 
	

		
			<label for="item">Choose a Item type:</label>
			<select class="form-select" class = "form-select" id="type" name="type">
			  <option value="all">All</option>
			  <option value="Smart Phone">Smart Phones</option>
			  <option value="Laptop">Laptop</option>
			  <option value="Clothes">Clothes</option>
			  <option value="Car">Car</option>
			  <option value="Home">Home</option>
			</select>	
			
			<input type = "submit" class="btn btn-primary btn-sm" name = "Shop">

	

		
		
	</form>
	</div>
	<div>		
		<form action = "Logout" method = "post">
			<br><input type = "submit" class="btn btn-outline-secondary btn-sm" value = "Logout">
		</form>
	</div>
	
	</div>
</body>
</html>