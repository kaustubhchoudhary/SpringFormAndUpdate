<%@page import="java.util.Base64"%>
<%@page import="spring_form.update.entity.Book"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Book Dashboard</title>

<style>
	table, th, td {
		border: 1px solid black;
		border-collapse: collapse;
	}
	
	p {
		width: 500px;
	}
	
	table, p {
		margin: auto;
		font-size: 20px;
	}
	
	caption {
		margin-bottom:20px;
		text-decoration: underline;
		color: violet;
	}
	
	th, td {
		padding:5px;
	}
	
	a {
		text-decoration: none;
		width: 200px;
		background-color: dodgerBlue;
		color: white;
		padding: 5px;
		border-radius: 5px;
		margin-left:10px;
	}
</style>
</head>
<body>
	<% 
		List<Book> listOfBooks = (List)request.getAttribute("myList");
	%>
	
	<table>
		<caption>Books List</caption>
		<tr>
			<th>Id</th>
			<th>Title</th>
			<th>Author</th>
			<th>Description</th>
			<th>Tags</th>
			<th>Rating</th>
			<th>Available</th>
			<th>Actions</th>
		</tr>
		
		<!-- Dynamic No of rows depending upon records in the database -->
		
		<% 
			int serialNo = 0;
			for(Book book : listOfBooks) {
				
				String inStock = book.isAvailable()?"Yes":"No";
			%>
		<tr>
			<td><%= book.getId() %></td>
			<td><%= book.getTitle() %></td>
			<td><%= book.getAuthor()%></td>
			<td><%= book.getDescription()%></td>
			<td><%= book.getTags()%></td>
			<td><%= book.getRating()%></td>
			<td><%= inStock%></td>
			<td>
				<a href="showUpdateBookFormPage/<%= book.getId() %>">Update</a>
			</td>
		
		</tr>
		<%} %>
		
		<tr>
			<td colspan = "8" style="padding:10px;text-align:center"><a href="showAddBookFormPage">Add Book</a></td>	
		</tr>
	</table>
</body>
</html>