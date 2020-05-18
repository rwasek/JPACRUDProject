<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<fmt:formatNumber value="${value}" type="currency" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="style/style.css">
<link href="https://fonts.googleapis.com/css2?family=Oswald:wght@600&display=swap" rel="stylesheet">
<title>Stock Ticker Info Home</title>
</head>
<body>
	<div class="jumbotron">
	<c:choose>
	<c:when test="${result == true}">
	<div class="jumbotron">
	Stock deleted successfully!
	</div>
	<form action="home.do" method="GET">
		<button type="button" class="btn btn-success">
  		<input type="submit" value="Back to Home"/>
  		</button>
	</form>
	</c:when>
	<c:otherwise>
	

	<h1 class="display-3">Welcome to the Stock Ticker App!</h1>
	<br>
	<div class="container">
		<form action="getStockSymbol.do" method="GET">
			<div class="form-group">
	  		<h4>Search for a Stock by Symbol (example: AAL): </h4><input type="text" name="stockSymbol" />
	  		<button type="button" class="btn btn-success">
	  		<input type="submit" value="Show Stock" class="form-control"/>
	  		</button>
	  		</div>
		</form>
		<form action="createANewStock.do" method="GET">
			<div class="form-group">
	  		<h4>Create a Stock</h4>
	  		<button type="button" class="btn btn-success">
	  		<input type="submit" value="Create A Stock" class="form-control"/>
	  		</button>
	  		</div>
		</form>
		<form action="deleteStock.do" method="POST">
			<div class="form-group">
			<h4>Delete a Stock by Symbol (example: CCL): </h4><input type="text" name="stockSymbol" class="form-control"/>
			<button type="button" class="btn btn-success">
	  		<input type="submit" value="Delete This Stock" class="form-control"/>
	  		</button>
	  		</div>
		</form>
	</div>
	<div class="container">
		<h1>Current Portfolio:</h1>
		<br>
		<ul class="list-group">
			<c:forEach var="stock" items="${stocks}">
	  			<li class="list-group-item"><a href="getStock.do?sid=${stock.id}"><h3>$${stock.symbol} - ${stock.companyName} - <fmt:formatNumber value="${stock.midMay2020Price}" type="currency"/></h3></a></li>
			</c:forEach>
		</ul>
	</div>
	</c:otherwise>
	</c:choose>
	</div>
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
</body>
</html>