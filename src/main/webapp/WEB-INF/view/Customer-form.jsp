<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
	integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS"
	crossorigin="anonymous">




<title>Customer Form</title>
</head>
<body>
	<div class="container">
		<h3>CUSTOMER RELATIONSHIP MANAGEMENT</h3>
		<hr>
		<p class="h4 mb-4">Save Customer</p>

		<form action="/customerRelationshipManagement/customer/save"
			method="post">

			<input type="hidden" name="id" value="${Student.id}" />

			<div class="form-inline">
				<input type="text" name="firstName" value="${Student.firstName}"
					class="form-control mb-4 col-4" placeholder="firstName">
			</div>

			<div class="form-inline">
				<input type="text" name="lastName" value="${Student.lastName}"
					class="form-control mb-4 col-4" placeholder="lastName">
			</div>

			<div class="form-inline">
				<input type="text" name="Email" value="${Student.Email}"
					class="form-control mb-4 col-4" placeholder="course">
			</div>



			<button type="Submit" class="btn btn-info col-2">Save</button>
		</form>
		<hr>
		<a href="/customerRelationshipManagement/customer/list">Back to
			List</a>
	</div>

</body>
</html>