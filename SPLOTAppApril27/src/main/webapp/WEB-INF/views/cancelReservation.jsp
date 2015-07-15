<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Cancel Reservation</title>
</head>
<body>

	<form:form method="POST" modelAttribute="customer">
		<table>
			<tr>
				<td>First Name :</td>
				<td><form:input path="firstName" /></td>
			</tr>
			<tr>
				<td>Last Name :</td>
				<td><form:input path="lastName" /></td>
			</tr>
			<tr>
				<td>Email Address :</td>
				<td><form:input path="emailAddress" /></td>
			</tr>
			<tr>
				<td>Lot Number :</td>
				<td><form:input path="lotNumber" /></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="Cancel Reservation"/></td>
			</tr>

		</table>
	</form:form>
</body>
</html>