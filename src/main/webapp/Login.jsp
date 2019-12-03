<%@page import="product.ProductHandler"%>
<%@page import="category.CategoryHandler"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<c:import url="Shared.jsp" />

<style type="text/css">
h4{
	text-align: center;
}
button {
	margin-left: 400px;
}
input {
	margin-left: 100px;
	
}
</style>
</head>
<body>
<br>
<h1 id="myHeader">Log In!</h1>
</br>



	<c:import url="Header.jsp" />
	<div>
	
	

	
	<c:if test="${not empty invalid}">
	<h6 class="alert alert-danger">invalid username and password Try again!!</h6>
	</c:if>
	
	<br>
	
		<form action="CheckLogin" method="post">
		<div class="container">
				<div class="row">
				<div class="col-lg-2">

					<h4> Email</h4>
							
				</div>
         
				<div class="col-lg-4">
					<input type="Email" name="email" class="form-control" 
						placeholder="Enter Email" required="true"></input>
				</div>

			</div>


			<br/>
			<div class="row">
				<div class="col-lg-2">

					<h4>Password</h4>
					
				
				</div>
				
				<div class="col-lg-4">
					<input type="Password" name="password" class="form-control"
						placeholder="Enter Password" required="true"></input>
				</div>

			</div>
			
<!--	<div class="row">
				<div class="col-lg-4">
					<h4>Confirm password:-</h4>
				</div>
				<div class="col-lg-8">
					<input type="password" name="userConfirmPassword"
						class="form-control" placeholder="Confirm Password"
						required="true"></input>
				</div>
			</div>
			<br>-->
			
			<br/>
	<button style="height: 50px; width: 100px; text-align: center;" class="btn btn-danger">
						<i class="fas fa-plus">LogIn</i>
					</button>
					</div>
					</form></div>
</body>
</html>