<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>New List of Reservations</title>
</head>
<body>
<div>List of Reservations<br />
<br />
</div>
<table border="1" cellspacing="10" cellpadding="10">

	<c:forEach items="${lots}" var="lot">
		<tr>
			<td>${lot.lotNumber} <br /> ${lot.isReserved} </td>
		</tr>
	</c:forEach>
</table>

<div><br />
<a href='/splot/downtown/reserve'>Reserve Spot</a></div>
<div><br />
<a href='/splot/downtown/cancel'>Cancel Reservation</a></div>
</body>
</html>