<%@page import="category.Category"%>
<%@page import="category.CategoryHandler"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://kit.fontawesome.com/39fe37b06d.js"></script>
<meta charset="ISO-8859-1">
<title>Edit category</title>
<c:import url="Shared.jsp"></c:import>
<c:import url="Header.jsp"></c:import>
<base>
<%

short id = Short.parseShort(request.getParameter("id"));

Category c = new CategoryHandler().fetchCategory(id);

request.setAttribute("currCat", c);
%>


</head>
<body>

<h1 style="text-align: center;">Edit Category</h1>

<hr>

<form action="EditCategoryToDB" method="post">

<input type="hidden" name="id" value="${currCat.getId()}">
<div class="container">
<div class="row">
<div  class="col-lg-4">
<h4>Enter Category Name</h4>
</div>
<div class="col-lg-8">
<input name="categoryName" value="${currCat.getName()}"  class="form-control" placeholder="Enter Category">
</div>
</div>

<br>
<div class="row">
<div class="col-lg-4">
<h4>Enter Category Discription</h4>
</div>
<div class="col-lg-8">
<textarea name="categoryDescription" placeholder="Enter Category Description"  class="form-control" cols="">${currCat.getDescription()}</textarea>
</div>
</div>

<br>
<br>

<div class="row">
<div class="col-lg-12" style="text-align: center;">
<button class="btn btn-danger"> <i class="fas fa-plus-square"></i>Edit</i></button>

</div>
</div>
</div>

</form>
</body>
</html>