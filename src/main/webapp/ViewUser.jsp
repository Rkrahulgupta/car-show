
<%@page import="user.UserHandler"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<c:import url="Shared.jsp" />
<c:import url="Header.jsp" />

<%
	UserHandler uh = new UserHandler();
	request.setAttribute("UList", uh.fetchAllUser());
%>
</head>
<body>

	<br>
	<br>

	<h1 style="text-align: center; font-family: Comic Sans MS, cursive, sans-serif">Users</h1>
	<br>


	<c:choose>

		<c:when test="${empty UList}">
			<h1 class="alert alert-danger">NO User found in DB!!</h1>
		</c:when>

		<c:otherwise>

			<hr>

			<table class="table table-primary">
				<thead class="table-dark">
					<tr>
						<th>£</th>
						<th>Name</th>
						<th>Phone</th>
						<th>Email</th>
						<th>Password</th>
						<th>Active</th>
						<th>Role</th>
						<th>Operation</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${UList}" var="user">

						<tr>
							<td>${user.getId()}</td>
							<td>${user.getName()}</td>
							<td>${user.getPhone()}</td>
							<td>${user.getEmail()}</td>
							<td>${user.getPassword()}</td>
							<td>${user.getActive()}</td>
							<td>${user.getRole()}</td>


							<td><a href="" class="btn btn-primary">Edit</a> 
						<a	href="DeleteUserFromDB?id=${user.getId()}" class="btn btn-danger">Delete</a>
								<c:if test="${user.getActive()==1}">
									<a href="InActiveToDB?id=${user.getId()}" class="btn btn-link">
										Set Inactive</a></c:if>
								 <c:if test="${user.getActive()==0}">
									<a href="ActiveToDB?id=${user.getId()}" class="btn btn-link">
										Set active</a></c:if>
								</td>	
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</c:otherwise>
	</c:choose>
</body>
</html>