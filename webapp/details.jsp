<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="com.gap.Dao" %>
<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Details</title>

<link rel = "stylesheet href" href = "css/bootstrap.min.css">
<link rel = "stylesheet href" href = "css/style.css">

</head>
<body>
	<%
		String type = request.getParameter("type");
	
		Dao dao = new Dao();
		ResultSet resultSet = dao.getDetails(type);
	%>
	
	<div class = "container"><h3>Your Search Results are...</h3></div>
	<div class = "container"><table class = "table table-bordered ">
	<thead>
      <tr>

      <th>Product ID</th>
      <TH>Product Name</TH>
      <TH>Product type</TH>
      <TH>Price</TH>

      </tr> 
	</thead>
	
	
      <% while(resultSet.next()){ %>
	<tbody class="table-group-divider">
	
	
      <TR>
       <TD> <%= resultSet.getString(1) %></td>
       <TD> <%= resultSet.getString(2) %></TD>
       <TD> <%= resultSet.getString(3) %></TD>
       <TD> <%= resultSet.getString(4) %></TD>
      </TR>

      <% } %>
	</tbody>	
     </TABLE>
     </div>

</body>
</html>