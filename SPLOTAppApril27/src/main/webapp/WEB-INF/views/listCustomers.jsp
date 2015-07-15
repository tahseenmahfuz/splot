<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>List reservations</title>
</head>
<body>
	<div>
		List of Reservations<br> <br>
	</div>
	<table border="1">
		<tr>
			<th>Name</th>
			<th>Email</th>
			<th>Lot</th>
		</tr>
		<c:forEach items="${reservationList}" var="customer">
			<tr>
				<td>${customer.value.firstName}${customer.value.lastName }</td>
				<td>${customer.value.emailAddress}</td>
				<td>${customer.key}</td>
			</tr>
		</c:forEach>
	</table>
	<div>
		<br> <a href='/splot'>Splot Home</a>
	</div>
</body>
</html>