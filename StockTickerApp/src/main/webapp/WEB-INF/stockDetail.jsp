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
<title>Stock details</title>
</head>
<body>
	<header>
<!-- 	<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
   <a class="navbar-brand" href="#">
    <img src="bird.jpg" alt="Logo" style="width:40px;">
  </a> -->
	<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
		<a class="navbar-brand" href="#">
    	<img src="https://i.pinimg.com/originals/65/28/da/6528da74c569a3aca4160ba813d93720.jpg" alt="Logo" style="width:40px;">
 		 </a>	
		<h4 class="stockview">$${stock.symbol} Ticker Details</h4>
		<form action="home.do" method="GET">
	  		<input type="submit" value="Back to Home"/>
		</form>
		<form action="deleteStock.do" method="POST">
	  		<input type="hidden" value="${stock.symbol}" name="stockSymbol"/>
	  		<input type="submit" value="Delete This Stock"/>
		</form>
		<form action="updateStockView.do" method="POST">
	  		<input type="hidden" value="${stock.id}" name="sid"/>
	  		<input type="submit" value="Update This Stock"/>
		</form>
		<h4 class="chartView">${stock.companyName} Interactive Chart:</h4>
	</nav>
	</header>
		<div class="container-fluid">
  			<div class="row">
    			<div class="col-4">
					<table class="table table-dark table-striped">
						<tr><td>Ticker Symbol: $${stock.symbol}</td></tr>
						<tr><td>Company Name: ${stock.companyName}</td></tr>
						<tr><td>Exchange: ${stock.exchange}</td></tr>
						<tr><td>Price as of May 15th, 2020: <fmt:formatNumber value="${stock.midMay2020Price}" type="currency"/></td></tr>
						<tr><td>Annual Dividend/Yield: ${stock.dividendYield}%</td></tr>
						<tr><td>52-Week High: <fmt:formatNumber value="${stock.fiftyTwoWeekHigh}" type="currency"/></td></tr>
						<tr><td>52-Week Low: <fmt:formatNumber value="${stock.fiftyTwoWeekLow}" type="currency"/></td></tr>
						<tr><td>Average Analyst Price Target: <fmt:formatNumber value="${stock.analystPriceTarget}" type="currency"/></td></tr>
						<tr><td>Analyst PT Upside/Downside: ${stock.analystPtUpside}</td></tr>
					</table>
				</div>
	
		<div class="col-8">
	<!-- TradingView Widget BEGIN -->
		<div class="tradingview-widget-container">
		  <div id="tradingview_2b478"></div>
		  <div class="tradingview-widget-copyright"><a href="https://www.tradingview.com/symbols/NASDAQ-${stock.symbol}/" rel="noopener" target="_blank"><span class="blue-text">AAL Chart</span></a> by TradingView</div>
		  <script type="text/javascript" src="https://s3.tradingview.com/tv.js"></script>
		  <script type="text/javascript">
		  new TradingView.widget(
		  {
		  "width": 980,
		  "height": 610,
		  "symbol": "${stock.exchange}:${stock.symbol}",
		  "interval": "W",
		  "timezone": "Etc/UTC",
		  "theme": "light",
		  "style": "1",
		  "locale": "en",
		  "toolbar_bg": "#f1f3f6",
		  "enable_publishing": true,
		  "allow_symbol_change": true,
		  "details": true,
		  "container_id": "tradingview_2b478"
		}
		  );
		  </script>
		</div>
		<!-- TradingView Widget END -->
		</div>
		  </div>
		</div>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
</body>
</html>