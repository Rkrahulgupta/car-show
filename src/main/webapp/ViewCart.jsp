<%@page import="product.ProductHandler"%>
<%@page import="product.Product"%>
<%@page import="cart.Cart"%>
<%@page import="user.User"%>
<%@page import="cart.CartHandler"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<style type="text/css">
</style>

<c:import url="Shared.jsp" />
<%
	CartHandler ch = new CartHandler();
	//request.setAttribute("CList", ch.fetchAllCarts());

	User u = (User) request.getSession().getAttribute("currentUser");

	if (u == null) {
		request.setAttribute("CatList", ch.fetchAllCarts());
	} else {
		request.setAttribute("CatList", ch.fetchAllCartItemsForUser(u.getId()));
	}

	float grandTotal = 0.0f;
	ProductHandler ph = new ProductHandler();
%>
<style type="text/css">


img{
transition: transform .4s;

}


img:hover{
-ms-transform: scale(1.08);
	transform: scale(1.06); 
}
</style>
</head>
<body>

	<c:import url="Header.jsp" />


	<div style="border: 2px solid black; background: lightblue; padding-bottom: 5px">
		<h1 style="text-align: center; font-family: Comic Sans MS, cursive, sans-serif;">My Cart</h1>
		<a href="ViewProduct.jsp" style="font-family: Arial Black,sans-serif;">More Items</a> <br>
	</div>
	<c:choose>
		<c:when test="${empty CatList}">
			<h1 class="alert alert-danger">
				Cart is empty !!! 
				
			</h1>
		</c:when>

		<c:otherwise>

			<!-- 			<div style="background:lightblue;">
			<h2 style="text-align: center;">Items</h2>
                 </div>       -->

			<c:forEach items="${CatList}" var="cart">
				<!--  -->
				<%
					Cart x = (Cart) (pageContext.getAttribute("cart"));
								Product pr = ph.fetchProduct((short) (x.getProductId()));
								//pageContext.setAttribute("pro",p);
				%>

				<div
					style="border:2px solid black; background: #fefbd8; padding-bottom: 5px;">
					<div class="card"
						style="max-width: 40%; margin-left: 420px; margin-top: 20px;">
						<div class="card-body">
							<img style="width: 100%; margin: auto; height: 250px;"
								src="<%=pr.getImageUrl()%>"> <br> <br>
							<div style="text-align: center;">
								<h3><%=pr.getName()%></h3>

								<h3 class="badge badge-pill badge-danger"><%=pr.getCategory().getName()%></h3>
								<br>

								<h6 style="font-weight: bold;">
									Price:<i id="R" class="fas fa-dollar-sign"></i><%=pr.getPrice()%></h6>

								<h8 style="font-weight: bold;"> Qty =${cart.getQty()}</h8>
								<br>
 
								<h8 style="font-weight: bold;"> Price = <%=pr.getPrice()%> <br>
								</h8>
								<h3>
									Subtotal = RS.
 									<%=pr.getPrice() * x.getQty()%>

									<%
										grandTotal += pr.getPrice() * x.getQty();
									%>/-
								</h3>
							</div>
                                  <h6 class="text-center">Quantity</h6>
                                     <div class="input-group input-number-group">
                                       <div class="input-group-button">
                                    <span class="input-number-decrement">-</span>
                              </div>
                                 <input class="input-number" type="number" value="1" min="0" max="10">
                                            <div class="input-group-button">
                                      <span class="input-number-increment">+</span>
                             </div>
                              </div>


							
							<!-- <a href="" class="btn  btn-outline-primary">Edit</a> -->
							<a href="DeleteCart?id=${cart.getId()}" class="btn btn-danger"
								style="width: 100%;">Delete</a>
						</div>

						<p>${product.getDescription()}</p>
					</div>
				</div>


				<%-- 							<td>${cart.getQty()}</td>

							<td><%=p.getPrice() * x.getQty()%></td>
							<%
								grandTotal += p.getPrice() * x.getQty();
							%>

							<td>
								<!-- <a href="" class="btn  btn-outline-primary">Edit</a> --> <a
								href="DeleteCart?id=${cart.getId()}"
								class="btn btn-outline-danger">delete</a>
							</td> --%>

			</c:forEach>

			<br>
			<div
				style=" text-align: center; border:2px solid black;  background-color: lightblue;">

				<h1 font-weight:bold;>
					Grand Total:
					<%=grandTotal%></h1>

				<a href="Address.jsp"
					class="btn btn-success" style="border: 1px solid black">Place
					Order</a> <br>
			</div>

		</c:otherwise>
	</c:choose>



</body>
</html>