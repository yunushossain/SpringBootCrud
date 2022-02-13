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
	<div class=" container col-md-6 justify-content-center">
		<form action="/save" method="post">
			<h2>Student Registration</h2>
			
			<div class="mb-3">
				<label for="name" class="form-label">Name</label> <input type="text"
					class="form-control" id="name" placeholder="Type your name"
					name="name">
			</div>
			<div class="mb-3">
				<label for="email" class="form-label">Email</label> <input
					type="email" class="form-control" id="email" name="email"
					placeholder="type your email">
			</div>
			<div class="mb-3">
				<label>Location</label> <select class="form-control" name="location">
					<option>Select your location</option>
					<option value="Dhaka">Dhaka</option>
					<option value="Khulna">khulna</option>
					<option value="Barisal">barisal</option>
				</select>
			</div>

			<div>
				Gender
				<div class="form-check-inline">
					<input type="radio" class="form-check-input" id="male"
						name="gender" value="Male"> <label for="male"
						class="form-check-label">Male</label>
				</div>
				<div class="form-check-inline">
					<input type="radio" class="form-check-input" id="female"
						name="gender" value="Female"> <label for="female"
						class="form-check-label">Female</label>
				</div>

			</div>

			<div>
				<label>Skills :</label>
				<div class="form-check-inline">
					<input type="checkbox" class="form-check-input" id="html"
						name="skill" value="Html"> <label for="html"
						class="form-check-label">Html</label>
				</div>

				<div class="form-check-inline">
					<input type="checkbox" class="form-check-input" id="dd"
						name="skill" value="DD"> <label for="dd"
						class="form-check-label">DD</label>
				</div>
				<div class="form-check-inline">
					<input type="checkbox" class="form-check-input" id="java"
						name="skill" value="Java"> <label for="java"
						class="form-check-label">Java</label>
				</div>

			</div>

			<div>
				<label>Address :</label>
				<textarea rows="" cols="" class="form-control" name="address"
					placeholder="Type Your Address"></textarea>

			</div>
			<div class=" mt-3">
				<button type="submit" class="btn btn-primary">Submit</button>
			</div>

		</form>

		<a href="/show">Student List</a>

	</div>
</body>
</html>