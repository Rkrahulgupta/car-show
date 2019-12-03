<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>SignUp</title>

<c:import url="Shared.jsp"></c:import>
<c:import url="Header.jsp"></c:import>

<script src="https://kit.fontawesome.com/9e7eeea313.js"></script>

</head>


<body>

	<h1 style="text-align: center;font-family: Comic Sans MS, cursive, sans-serif">Sign Up</h1>

	<hr>

	<form action="AddUserToDB" method="post">
		<div class="container">
			<div class="row">
				<div class="col-lg-4">

					<h4>Enter user Name</h4>
				</div>

				<div class="col-lg-8">
					<input name="userName" class="form-control"
						placeholder="Enter user">
				</div>

			</div>

			<br/>
			<div class="row">
				<div class="col-lg-4">
					<h4>Enter User's Phone Number:</h4>
				</div>
				<div class="col-lg-8">
					<input type="number" name="userPhone" maxlength="10" class="form-control"
						placeholder="Enter User's Phone Number">
				</div>
			</div>

			<br>
			<div class="row">
				<div class="col-lg-4">

					<h4>Enter user Email</h4>
				</div>

				<div class="col-lg-8">
					<input name="userEmail" class="form-control"
						placeholder="Enter Email">
				</div>

			</div>

			<br />
			<div class="row">
				<div class="col-lg-4">

					<h4>Enter password</h4>
				</div>

				<div class="col-lg-8">
					<input name="userPassword" class="form-control"
						placeholder="Enter Password">
				</div>

			</div>

			<br />
<!-- 			<div class="row">
				<div class="col-lg-4">

					<h4>Enter Active</h4>
				</div>

				<div class="col-lg-8">
					<input type="number" name="userActive" class="form-control"
						placeholder="Enter Active">
				</div>

			</div>

			<br />
						<div class="row">
				<div class="col-lg-4">

					<h4>Enter User's Role</h4>
				</div>

				<div class="col-lg-8">
					<input name="userRole" class="form-control"
						placeholder="Enter Role">
				</div>

			</div> 

			<br /> -->
			<div style="margin-left: 5px;" class="row">
				<div class="col-lg-12" style="text-align: center;">
					<button style="height: 40px; width: 80px;" class="btn btn-danger">
						<i class="fas fa-plus-circle">Sign up</i>
					</button>
				</div>
			</div>
		</div>
	</form>
</body>
</html>