<%@ page language="java" contentType="text/html; charset=ISO-8859-1"  pageEncoding="ISO-8859-1"%>
<%@taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c' %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
   <title>Catalog</title>
</head>
<body>
	<h1>Catalog</h1><br>

	<table border="0" cellspacing="10">
		<tr>
			<td>Title</td>
			<td>Author</td>
			<td>ISBN</td>
			<td>Price</td>
			<td></td>
		</tr>
		
		<c:forEach items="${bookList}" var="book">
			<tr>
				<td>${book.title}</td>
				<td>${book.author}</td>
				<td>${book.isbn}</td>
				<td>${book.price} euros</td>
				<td><a href="book?id=${book.id}">display details</a>
			</tr>
		</c:forEach>
	</table>
	
	<a href="bookcreatetestdata">Create a few test books</a>
	
</body>
</html>