<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="java.sql.ResultSet"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>MVC using Spring Boot</title>

</head>
<body>
	<h2>Employee Information</h2>
	<table border="1">
	<style>
		table {
			border:2px outset #b3adad;
			border-collapse:collapse;
			padding:5px;
		}
		table th {
			border:2px outset #b3adad;
			padding:5px;
			background: #fbff00;
			color: #000000;
		}
		table td {
			border:2px outset #b3adad;
			text-align:center;
			padding:5px;
			background: #ffffff;
			color: #313030;
		}
	</style>
		<thead>
			<tr>
				<th>Employee ID</th>
				<th>Employee Name</th>
				<th>Designation</th>
				<th>Address</th>
				<th>Salary</th>
				<th>Action</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="emp" items="${model}">
				<tr>
				<form method="Post" action="/delete/${emp.id}">
					<td><c:out value="${emp.id}" /></td>
					<td><c:out value="${emp.name}" /></td>
					<td><c:out value="${emp.address}" /></td>
					<td><c:out value="${emp.position}" /></td>
					<td><c:out value="${emp.salary}" /></td>
					<td><button type="submit" value="delete" name="delete">Delete</button></td>
					</form>
				</tr>
				<tr>
				
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<br>
	<h3>Search Employee</h3>
	<form action="/search" method="POST">
	<input type="text" name="name" placeholder="Enter Employee Name">
	<button type="submit" value="search" name="search">Search</button>
	<br><br>
		
	</form>
	<h3>Add New Employee</h3>
	<form action="save" method=POST>
	
		<input type="text" placeholder="Employee Name" name="name">
		<input type="text" placeholder="Address" name="address">
		<input type="text" placeholder="Designation" name="position">
		<input type="number" placeholder="Salary" name="salary">
		<br><br>
		<button type="submit" value="save" name="save">Add Employee</button>
	</form>
	<br><br>
	<h3>Update Employee</h3>

	<form action="/update" method=POST>
		<input type="number" name="id" value=emp.id placeholder="Employee ID" />
		<br>
		<input type="text" placeholder="Employee name" name="name">
		<input type="text" placeholder="Address" name="address">
		<input type="text" placeholder="Designation" name="position">
		<input type="number" placeholder="Salary" name="salary">
		<br><br>
		<button type="submit" value="update" name="update">Update Employee</button>
		
		
	</form>
</body>
</html>