<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
	crossorigin="anonymous">
<title>SignUp</title>
</head>
<body>
	<div class="container mt-5">
		<div class="row">
			<div class="text-center"><h1>Register User</h1></div>
			<div class="col-9 m-auto mt-5">
				<form class="row g-3" action="/springweb02/save">
					<div class="col-md-6">
						<label for="fname" class="form-label">First Name</label> <input
							type="text" class="form-control" id="fname" name="fname">
					</div>
					<div class="col-md-6">
						<label for="lname" class="form-label">Last Name</label> <input
							type="text" class="form-control" id="lname" name="lname">
					</div>
					<div class="col-md-6">
						<label for="email" class="form-label">Email</label> <input
							type="email" class="form-control" id="email" name="email">
					</div>
					<div class="col-md-6">
						<label for="pwd" class="form-label">Password</label> <input
							type="password" class="form-control" id="pwd" name="pwd">
					</div>
					<div class="col-12">
						<label for="add" class="form-label">Address</label> <input
							type="text" class="form-control" id="add" name="add"
							placeholder="1234 Main St">
					</div>
					<div class="col-md-6">
						<label for="inputCity" class="form-label">City</label> <input
							type="text" class="form-control" id="inputCity" name="city">
					</div>
					<div class="col-md-4">
						<label for="inputState" class="form-label">Country</label> 
						<select id="inputState" class="form-select" name="cnt">
							<option selected>Choose...</option>
							<option value="India">India</option>
							<option value="USA">USA</option>
							<option value="Russia">Russia</option>
						</select>
					</div>
					<div class="col-md-2">
						<label for="inputZip" class="form-label">Zip</label> <input
							type="text" class="form-control" id="inputZip" name="zip">
					</div>
					<div class="col-12">
						<div class="form-check">
							<input class="form-check-input" type="checkbox" id="gridCheck">
							<label class="form-check-label" for="gridCheck">Confirm Information</label>
						</div>
					</div>
					<div class="col-12">
						<button type="submit" class="btn btn-primary">Submit</button>
					</div>
				</form>
			</div>
		</div>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
		crossorigin="anonymous"></script>
</body>
</html>