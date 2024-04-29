<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8 without BOM">
		<title>Mongo Table</title>
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
	</head>
	<body>
		<form method="post">
			<label for="bookName_tag">Book Name
				<input type="text" id="bookName_tag" placeholder="Book Name" name="bookName_tag">
			</label>
			<br>
			<label for="author_tag">Author
				<input type="text" id="author_tag" placeholder="Author" name="author_tag">
			</label>
			<br>
			<label for="store_tag">Store
				<input type="text" id="store_tag" placeholder="Store" name="store_tag">
			</label>
			<br>
			<label for="price_tag">Price
				<input type="text" id="price_tag" placeholder="Price" name="price_tag">
			</label>
			<br>
			<label for="insert_btn">
				<input type="submit" id="insert_btn" value="Insert" formaction="MongoAdd">
			</label>
		</form>
	</body>
</html>