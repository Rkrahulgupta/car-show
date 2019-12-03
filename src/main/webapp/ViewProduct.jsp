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


<%
	ProductHandler ph = new ProductHandler();

	request.setAttribute("ProductList", ph.fetchAllProducts());
%>

<style type="text/css">
.card {
	width: 25% !important;
	margin: 20px !important;
	display: inline-flex;
}

.card-body {
	padding: 0;
	margin: 0;
}
/* Slideshow container */
.slideshow-container {
  max-width: 1000px;
  position: relative;
  margin: auto;
}

/* Caption text */
.text {
  color: #f2f2f2;
  font-size: 15px;
  padding: 8px 12px;
  position: absolute;
  bottom: 8px;
  width: 100%;
  text-align: center;
}

/* Number text (1/3 etc) */
.numbertext {
  color: #f2f2f2;
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  top: 0;
}

/* The dots/bullets/indicators */
.dot {
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
}

.active {
  background-color: #717171;
}

/* Fading animation */
.fade {
  -webkit-animation-name: fade;
  -webkit-animation-duration: 4.5s;
  animation-name: fade;
  animation-duration: 4.5s;
}

@-webkit-keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

@keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

/* On smaller screens, decrease text size */
@media only screen and (max-width: 300px) {
  .text {font-size: 11px}
}
</style>

</head>
<body>

	<c:import url="Header.jsp" />

	<br>
	
	<br>

	<div class="Flicker">

<div class="mySlides fade">
  
  <img src="https://res.cloudinary.com/daobgroh3/image/upload/w_1000,ar_16:9,c_fill,g_auto,e_sharpen/v1570946741/car-hd-concept_ho8uh8.jpg" style="width:100%">
  
</div>

<div class="mySlides fade">
  
  <img src="https://res.cloudinary.com/daobgroh3/image/upload/w_1000,ar_16:9,c_fill,g_auto,e_sharpen/v1570946417/black-car-pictures-4_kuucil.jpg" style="width:100%">
  
</div>

<div class="mySlides fade">
  
  <img src="https://res.cloudinary.com/daobgroh3/image/upload/w_1000,ar_16:9,c_fill,g_auto,e_sharpen/v1570946719/91nJdNCQDmL._SL1500__wvtclu.jpg" style="width:100%">
  
</div>

<div class="mySlides fade">

  <img src="https://res.cloudinary.com/daobgroh3/image/upload/w_1000,ar_16:9,c_fill,g_auto,e_sharpen/v1568784789/uxy50uw7pysbi01wxwuk.webp" style="width:100%">
  
</div>

</div>
<br>

<div style="text-align:center">
  <span class="dot" onclick="currentSlide(1)"></span> 
  <span class="dot" onclick="currentSlide(2)"></span> 
  <span class="dot" onclick="currentSlide(3)"></span>
  <span class="dot" onclick="currentSlide(4)"></span>
   
</div>

	<br>
	<c:if test="${sessionScope.currentUser.getRole()=='user'}">
	<a href="AddProduct.jsp" class="btn btn-link" style="font-family: Arial Black,Gadget, sans-serif">Add Product</a>
</c:if>

	<c:choose>

		<c:when test="${empty ProductList}">

			<h1 class="alert alert-danger">No Products in DB</h1>

		</c:when>

		<c:otherwise>


			<hr>

			<c:forEach items="${ProductList}" var="Product">

				<div class="card">
					<!-- <div class="card-header">Header</div> -->
					<div class="card-body">

						<img style="width: 100%; margin: auto;"
							src="${Product.getImageUrl()}">

						<h1>${Product.getName()}</h1>
						<br>

						<h3 class="badge badge-success">${Product.getCategory().getName()}</h3>
						<br>

						<h6>Price: RS.${Product.getPrice()}/-</h6>

						<br>

						<p>${Product.getDescription()}</p>

						<h6>
							In Stock: <span class="badge badge-warning"
								style="padding: 10px;">${Product.getStockqty()}</span>
						</h6>

					</div>
					<c:if test="${sessionScope.currentUser.getRole() == 'ADMIN'}">
				
					<div class="card-footer">

						<a href="EditProduct.jsp?id=${Product.getId()}"
							class="btn btn-success">Edit</a> <a
							href="DeleteProductFromDB?id=${Product.getId()}"
							class="btn btn-danger">Delete</a>
					</div>
					</c:if>
					<c:if test="${sessionScope.currentUser.getRole() == 'user'}">
						<div class="card-footer" style="text-align: center;">
							<form action="AddToCart" method="post">
								<div class="container">
									<div class="row">

										<div class="col-lg-4">
											<input type="number" class="form-control" placeholder="Qty"
												name="Qty"></input>
										</div>

										<div class="col-lg-8">
											<button class="btn btn-primary" style="">
												Add To Cart <i class="fa fa-shopping-cart"></i>
											</button>
										</div>


									</div>

									<input type="hidden" name="ProductId"
										value="${Product.getId()}" /> <input type="hidden"
										class="form-control"
										value="${sessionScope.currentUser.getId()}" name="userId"></input>
								</div>
								</form>
						</div>
					</c:if>
				</div>

			</c:forEach>


		</c:otherwise>

	</c:choose>

<script>
var slideIndex = 0;
showSlides();

function showSlides() {
  var i;
  var slides = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("dot");
  for (i = 0; i < slides.length; i++) {
    slides[i].style.display = "none";  
  }
  slideIndex++;
  if (slideIndex > slides.length) {slideIndex = 1}    
  for (i = 0; i < dots.length; i++) {
    dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";  
  dots[slideIndex-1].className += " active";
  setTimeout(showSlides, 5500); // Change image every 2 seconds
}
</script>

</body>
</html>