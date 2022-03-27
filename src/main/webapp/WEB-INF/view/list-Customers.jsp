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


<title>Students Directory</title>
</head>
<body>

	<div class="container">
		<h3>CUSTOMER RELATIONSHIP MANAGEMENT</h3>
		<hr>
		<a href="/customerRelationshipManagement/customer/showFormForAdd"
			class="btn btn-primary btn-sn mb-3"> Add Customer</a>


		<table class="table table bordered table stripped">
			<thead class="thead-dark">

				<tr>
					<th>FirstName</th>
					<th>lastName</th>
					<th>Email</th>
					<th>Action</th>

				</tr>
			</thead>
			<tbody>

				<c:forEach items="${Customers}" var="tempCustomer">
					<tr>
						<td><c:out value="${tempCustomer.firstName }" /></td>
						<td><c:out value="${tempCustomer.lastName }" /></td>
						<td><c:out value="${tempStudent.Email }" /></td>



						<td><a
							href="/customerRelationshipManagement/customer/showFormForUpdate?id=${tempCustomer.id}"
							class="btn btn-Info btn-sn">Update</a> <a
							href="/customerRelationshipManagement/customer/delete?id=${tempStudent.id}"
							class="btn btn-Info btn-sn"
							onclick="if(!(confirm('Are you Sure you want to delete'))) return false">
								Delete</a></td>
					</tr>

				</c:forEach>

			</tbody>



		</table>

	</div>

</body>
</html>