
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Book</title>
        <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 20px;
            background-color: #f4f4f4;
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
            margin: auto;
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
        }

        button[type="submit"]:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>

<h2 style="width:50%;margin:auto;margin-bottom:10px">Add Book</h2>

<form action="addBook" method="post">
    <label for="title">Title:</label>
    <input type="text" id="title" name="title" required><br/>

    <label for="author">Author:</label>
    <input type="text" id="author" name="author" required><br/>

    <label for="genre">Genre:</label>
    <input type="text" id="genre" name="genre" required><br/>

    <label for="description">Description:</label>
    <textarea id="description" name="description" rows="4" cols="50" required></textarea><br/>

    <label>Is Available:</label>
    <input type="checkbox" id="available" name="available"><br/>

    <label>Tags:</label><br/>
    <input type="checkbox" id="tag1" name="tags" value="Fiction">
    <label for="tag1">Fiction</label><br/>
    
    <input type="checkbox" id="tag2" name="tags" value="Non-Fiction">
    <label for="tag2">Non-Fiction</label><br/>
    
    <input type="checkbox" id="tag3" name="tags" value="Mystery">
    <label for="tag3">Mystery</label><br/>
    
    <input type="checkbox" id="tag4" name="tags" value="Sci-Fi">
    <label for="tag4">Sci-Fi</label><br/>

    <label>Choose a Format:</label>
    <input type="radio" id="format1" name="format" value="Paperback" required>
    <label for="format1">Paperback</label>
    <input type="radio" id="format2" name="format" value="Hardcover" required>
    <label for="format2">Hardcover</label>
    <input type="radio" id="format3" name="format" value="Ebook" required>
    <label for="format3">Ebook</label><br/>

    <label for="language">Language:</label>
    <select id="language" name="language" required>
        <option value="English">English</option>
        <option value="French">French</option>
        <option value="Spanish">Spanish</option>
    </select><br/>

    <label for="rating">Rating:</label>
    <input type="number" id="rating" name="rating" required><br/>

    <button type="submit">Save Book</button>
</form>

</body>
</html>