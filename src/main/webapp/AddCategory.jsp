<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Add Category</title>

<c:import url="Shared.jsp"></c:import>
<c:import url="Header.jsp"></c:import>

<script src="https://kit.fontawesome.com/9e7eeea313.js"></script>

</head>


<body>

	<h1 style="text-align: center;font-family:Comic Sans MS, cursive, sans-serif  ">Add Category</h1>

	<hr>

	<form action="AddCategoryToDB" method="post">
		<div class="container">
			<div class="row">
				<div class="col-lg-4">

					<h4>Enter Category Name</h4>
				</div>

				<div class="col-lg-8">
					<input name="categoryName" class="form-control"
						placeholder="Enter Category Name">
				</div>

			</div>

			<br />
			<div class="row">
				<div class="col-lg-4">
					<h4>Enter Category Description</h4>
				</div>
				<div class="col-lg-8">
					<textarea name="categoryDescription"
						placeholder="Enter Category Description" class="form-control"
						cols=""></textarea>
				</div>
			</div>

			<br>

			<div style="margin-left: 5px;" class="row">
				<div class="col-lg-12" style="text-align: center;">
					<button style="height: 40px;width: 80px;" class="btn btn-danger">
						<i class="fas fa-plus">ADD</i>
					</button>
				</div>
			</div>
		</div>

	</form>
</body>
</html>