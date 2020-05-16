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
	
	<form action="getStock.do" method="GET">
  		Stock ID: <input type="text" name="sid" />
  		<input type="submit" value="Show Stock" />
	</form>
	
	<ul>
		<c:forEach var="stock" items="${stocks}">
  			<li><a href="getStock.do?sid=${stock.id}">${stock.symbol}</a></li>
  			<br>
		</c:forEach>
	</ul>
</body>
</html>