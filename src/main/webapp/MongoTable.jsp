<%@page import="com.mongodb.client.*,com.mongodb.client.FindIterable,com.mongodb.client.MongoClient,com.mongodb.client.MongoClients,com.mongodb.client.MongoCollection,com.mongodb.client.MongoCursor,com.mongodb.client.MongoDatabase,org.bson.Document"  %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8 without BOM">
		<title>Mongo Table</title>
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
	</head>
	<body>
		<%!
			private MongoCollection<Document> mongoConnect() {
				MongoClient mongoClient = MongoClients.create("mongodb://localhost:27017");
				MongoDatabase database = mongoClient.getDatabase("mongoJava");
				MongoCollection<Document> collection = database.getCollection("Book");
				return collection;
			}
		%>
		<%
			String search_tag = request.getParameter("search_tag");
			MongoCollection<Document> collection = mongoConnect();
			FindIterable<Document> cursor;
			if(search_tag != ""){
				Document query1 = new Document();
				query1.put("bookName", search_tag);
				cursor = collection.find(query1);
			}else{
				cursor = collection.find();
			}
		%>
		<table class="table table-hover table-border">
			<thead>
				<th>Book Name</th>
				<th>Author</th>
				<th>Store</th>
				<th>Price</th>
			</thead>
			<tbody>
				<%
					try (final MongoCursor<Document> cursorIterator = cursor.cursor()) {
					    while (cursorIterator.hasNext()) {
					    	Document record = cursorIterator.next();
					    	out.println("<tr>");
					    	out.println("<td>" + record.get("bookName") + "</td>");
					    	out.println("<td>" + record.get("author") + "</td>");
					    	out.println("<td>" + record.get("store") + "</td>");
					    	out.println("<td>" + record.get("price") + "</td>");
					    	out.println("</tr>");
					    }
					}catch(Exception e){
						out.println("<tr><td></td><td></td><td></td><td></td></tr>");
					}
				%>
			</tbody>
		</table>
		
	</body>
</html>