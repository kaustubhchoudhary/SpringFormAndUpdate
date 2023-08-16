<%@page import="java.util.List"%>
<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Book Form</title>
    <style>
    body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 20px;
        background-color: #f4f4f4;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
    }

    h2 {
        margin-bottom: 20px;
    }

    form {
        background-color: #fff;
        padding: 20px;
        border-radius: 5px;
        box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        width: 50%;
    }

    label {
        font-weight: bold;
    }

    input[type="text"],
    input[type="number"],
    textarea,
    select {
        width: 100%;
        padding: 8px;
        margin: 8px 0;
        border: 1px solid #ccc;
        border-radius: 4px;
        box-sizing: border-box;
    }

    input[type="checkbox"] {
        margin-right: 5px;
    }

    button[type="submit"] {
        background-color: #007bff;
        color: white;
        padding: 10px 20px;
        border: none;
        border-radius: 4px;
        cursor: pointer;
        font-size: 16px;
        width: 100%;
    }

    button[type="submit"]:hover {
        background-color: #0056b3;
    }
</style>

    
</head>
<body>
<% 
	String ctx = application.getContextPath();
	//out.print(ctx);
	String targetUrl = ctx+"/updateBook";
%>
<form:form modelAttribute="book" action="<%=targetUrl %>" method="post">
    <label for="id">Id:</label>
    <form:input path="id" /><br/>
    
    <label for="title">Title:</label>
    <form:input path="title"/><br/>

    <label for="author">Author:</label>
    <form:input path="author"/><br/>

    <label for="genre">Genre:</label>
    <form:input path="genre"/><br/>

    <label for="description">Description:</label>
    <form:textarea path="description" rows="4" cols="50"/><br/>

    <label for="available">Is Available:</label>
    <form:checkbox path="available"/><br/>
    
    <label>Tags</label>
    <form:checkbox path="tags" value="Fiction"/>Fiction
    <form:checkbox path="tags" value="Non-Fiction"/>Non-Fiction
    <form:checkbox path="tags" value="Mystery"/>Mystery<br/>
    <form:checkbox path="tags" value="Sci-Fi"/>Sci-Fi<br/>
    
    <label>Choose a Format:</label>
    <form:radiobutton path="format" value="Paperback"/>Paperback
    <form:radiobutton path="format" value="Hardcover"/>Hardcover
    <form:radiobutton path="format" value="Ebook"/>Ebook<br/>

    <label for="language">Language:</label>
    <form:select path="language">
        <form:option value="English">English</form:option>
        <form:option value="French">French</form:option>
        <form:option value="Spanish">Spanish</form:option>
    </form:select><br/>

    <label for="rating">Rating:</label>
    <form:input path="rating" type="number"/><br/>

    <button type="submit">Save Book</button>
</form:form>

</body>
</html>
