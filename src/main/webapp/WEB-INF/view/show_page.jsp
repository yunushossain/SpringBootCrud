<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
</head>
<body>
	<div calss="container col-md-8 justify-content-center">
		<h2>Student List</h2>
		<table class="table table-responsive table-bordered">

			<thead>
				<tr>
					<th scope="col">ID</th>
					<th scope="col">Name</th>
					<th scope="col">Email</th>
					<th scope="col">Location</th>
					<th scope="col">Gender</th>
					<th scope="col">Skills</th>
					<th scope="col">Address</th>
					<th scope="col">Action</th>
				</tr>
			</thead>
			<tbody>

				<c:forEach var="s" items="${data.st}">
					<tr>
						<td>${s.id}</td>
						<td>${s.name}</td>
						<td>${s.email}</td>
						<td>${s.location}</td>
						<td>${s.gender}</td>
						<td>${s.skill}</td>
						<td>${s.address}</td>
						<td><a href="/edit/${s.id}"><button
									class="btn btn-warning">Edit</button></a> | <a
							href="/delete/${s.id}"><button class="btn btn-danger">Delete</button></a>
						</td>

					</tr>

				</c:forEach>

			</tbody>
		</table>
		<a href="/">Create New Student</a>
	</div>

</body>

</html>