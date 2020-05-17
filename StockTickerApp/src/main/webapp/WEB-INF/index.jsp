<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="resources/style.css">

<title>Stock Ticker Info Home</title>
</head>
<body>
	<div class="jumbotron">
	<c:choose>
	<c:when test="${result == true}">
	<div>
	Stock deleted successfully!
	</div>
	<form action="home.do" method="GET">
  		<input type="submit" value="Back to Home!"/>
	</form>
	</c:when>
	<c:otherwise>
	
	

  <!-- <p class="lead">This is a simple hero unit, a simple jumbotron-style component for
                  calling extra attention to featured content or information.</p>
  <hr class="my-2">
  <p>It uses utility classes for typography and
     spacing to space content out within the larger container.</p>
  <p class="lead">
    <a class="btn btn-primary btn-lg" href="#!" role="button">Some action</a>
  </p> -->

	
	<h1 class="display-3">Welcome to the Stock Ticker App!</h1>

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
	</c:otherwise>
	</c:choose>
	</div>
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
</body>
</html>