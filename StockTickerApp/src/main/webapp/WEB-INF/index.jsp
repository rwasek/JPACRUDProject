<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Stock Ticker Info Home</title>
</head>
<body>

	<h1>Welcome to the Stock Ticker App!</h1>
	
	<form action="getStockSymbol.do" method="GET">
  		Search for a Stock by Symbol (example: AAL): $<input type="text" name="stockSymbol" />
  		<input type="submit" value="Show Stock" />
	</form>
	<form action="createANewStock.do" method="GET">
  		Create a Stock
  		<input type="submit" value="Create A Stock" />
	</form>
	<form action="deleteStock.do" method="POST">
		Delete a Stock by Symbol (example: CCL):
  		<input type="text" name="stockSymbol"/>
  		<input type="submit" value="Delete This Stock"/>
	</form>
	
	
	
	<ul>
		<c:forEach var="stock" items="${stocks}">
  			<li><a href="getStock.do?sid=${stock.id}">${stock.symbol}</a></li>
  			<br>
		</c:forEach>
	</ul>
</body>
</html>