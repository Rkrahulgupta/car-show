<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<nav style="width: 100%"
	class="navbar navbar-expand-sm bg-dark navbar-dark sticky-top">
	<!-- Brand -->
	
	
	<c:if test="${not empty sessionScope.currentUser}">
	 <a class="navbar-brand" href="#">Welcome 
	  ${sessionScope.currentUser.getEmail()} </a> 
	 <a class="navbar-brand" href="Logout"><i class="fas fa-unlock-alt"></i>Logout</a>
	 </c:if> 
	  
	<c:if test="${not empty sessionScope.currentUser.getRole() == 'ADMIN'}">
	  <a class="btn btn-success" href="Login.jsp">Login</a> 
		</c:if>
		
		<c:if test="${not empty sessionScope.currentUser.getRole() == 'ADMIN'}">
	  <a class="btn btn-success" href="SignUp.jsp">Sign Up</a> 
		</c:if>
	  
	<!-- Links -->
	
	<ul class="navbar-nav">
		<li class="nav-item"><a class="nav-link" href="#">About Us</a></li>
		

		<!-- Dropdown -->
		<c:if test="${sessionScope.currentUser.getRole()=='ADMIN'}">
		
		<li class="nav-item dropdown"><a class="nav-link dropdown-toggle"
			href="#" id="navbardrop" data-toggle="dropdown"> Category </a>
			</c:if>
			<div class="dropdown-menu">
				<a class="dropdown-item" href="AddCategory.jsp">Add Category</a>
				 <a	class="dropdown-item" href="ViewCategory.jsp">View Categories</a>
			</div></li>
			

		<!-- Dropdown -->

		<li class="nav-item dropdown"><a class="nav-link dropdown-toggle"
			href="#" id="navbardrop" data-toggle="dropdown"> Product </a>
			<div class="dropdown-menu">
					<c:if test="${sessionScope.currentUser.getRole()=='user'}">
				<a class="dropdown-item" href="AddProduct.jsp">Add Product</a>
				</c:if> <a
					class="dropdown-item" href="ViewProduct.jsp">View Product</a>
			</div></li>
			

		<!-- Dropdown -->
		<c:if test="${sessionScope.currentUser.getRole()=='ADMIN'}">
		<li class="nav-item dropdown"><a class="nav-link dropdown-toggle"
			href="#" id="navbardrop" data-toggle="dropdown"> Image </a>
			</c:if>
			<div class="dropdown-menu">
								
				<a class="dropdown-item" href="AddImageToBank.jsp">Add Image</a> 
				<a
					class="dropdown-item" href="ViewImageBank.jsp">View Image</a>
			</div></li>
			

		<!-- Dropdown -->
		<c:if test="${sessionScope.currentUser.getRole()=='ADMIN'}">
		<li class="nav-item dropdown"><a class="nav-link dropdown-toggle"
			href="#" id="navbardrop" data-toggle="dropdown"> User </a>
				 </c:if>
			<div class="dropdown-menu">
							
				<a class="dropdown-item" href="SignUp.jsp">Add User</a>
			 <a	class="dropdown-item" href="ViewUser.jsp">View User</a>
			</div></li>
			
			 
			 
			<li class="nav-item"><c:if
					test="${sessionScope.currentUser.getRole() == 'user'}">
					<a class="nav-link" href="ViewCart.jsp"><i class="fas fa-cart-plus"></i>View Cart</a>
				</c:if></li>
	</ul>
</nav>
<br>