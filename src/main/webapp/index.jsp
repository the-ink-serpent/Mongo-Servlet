<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Book Management</title>
	</head>
	<body>
		<form method="post">
			<input type="text" id="search_tag" placeholder="Empty to Search All" name="search_tag">
			<input type="submit" id="search_btn" value="Search" formaction="MongoTable.jsp">
			<input type="submit" id="add_btn" value="Add" formaction="MongoInsertForm.jsp">
		</form>
	</body>
</html>