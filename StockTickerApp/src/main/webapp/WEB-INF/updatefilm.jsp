<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="style/style.css">
<title>Update Film</title>
</head>
<body>
  <header>
	<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
			<a class="navbar-brand" href="#">
	    		<img src="https://i.pinimg.com/originals/65/28/da/6528da74c569a3aca4160ba813d93720.jpg" alt="Logo" style="width:40px;">
	 		</a>	
			<form action="home.do" method="GET">
		  		<input type="submit" value="Back to Home"/>
			</form>
			<a class="navbar-brand" id="tdalogo" href="http://www.tdameritrade.com" target="_blank">
	    		<img src="https://is5-ssl.mzstatic.com/image/thumb/Purple123/v4/25/77/8c/25778c62-cc88-5c99-5524-bcdc465190fd/AppIcon-0-0-1x_U007emarketing-0-0-0-7-0-0-sRGB-0-0-0-GLES2_U002c0-512MB-85-220-0-0.png/246x0w.png" alt="Logo" style="width:40px;">
	 		</a>
			<a class="navbar-brand" id="fidelitylogo" href="http://www.fidelity.com" target="_blank">
	    		<img src="https://media-exp1.licdn.com/dms/image/C4E0BAQFBVOZ626AFWQ/company-logo_200_200/0?e=2159024400&v=beta&t=4waP0UJCoAMBtgLFwwFMlIk_bj_ovJAc06m65B_65co" alt="Logo" style="width:40px;">
	 		</a>
			<a class="navbar-brand" id="robinhoodlogo" href="http://www.robinhood.com" target="_blank">
	    		<img src="https://is5-ssl.mzstatic.com/image/thumb/Purple113/v4/06/e3/de/06e3de3b-ef53-cba0-0630-194b0faad508/AppIcon-0-0-1x_U007emarketing-0-0-0-7-0-0-sRGB-0-0-0-GLES2_U002c0-512MB-85-220-0-0.png/320x0w.jpg" alt="Logo" style="width:40px;">
	 		</a>
	</nav>
  </header>
	<div class="container-fluid">
		<form action="updateStock.do" method="POST">
			<h1>Update ${stock.symbol}</h1>
			<div class="form-group">
		    <h4>Stock Symbol (Ex: AAPL):</h4>
		    <input type="text" value="${stock.symbol}" name="symbol"/>
		    <h4>Company Name:</h4>
		    <input type="text" value="${stock.companyName}" name="companyName"/>
		    <h4>Exchange (Ex: NASDAQ, NYSE, OTC):</h4>
		    <input type="text" value="${stock.exchange}" name="exchange"/>
		    <h4>Price as of Market Close 5/15/2020:</h4>
		    <input type="number" value="${stock.midMay2020Price}" step="0.01" name="midMay2020Price"/>
		    <h4>Annual Dividend/Yield (Ex: 4.00):</h4>
		    <input type="number" value="${stock.dividendYield}" step="0.01" name="dividendYield"/>
		    <h4>52-Week High:</h4>
		    <input type="number" value="${stock.fiftyTwoWeekHigh}" step="0.01" name="fiftyTwoWeekHigh"/>
		    <h4>52-Week Low:</h4> 
		    <input type="number" value="${stock.fiftyTwoWeekLow}" step="0.01" name="fiftyTwoWeekLow"/>
		    <h4>Analyst Price Target:</h4> 
		    <input type="number" value="${stock.analystPriceTarget}" step="0.01" name="analystPriceTarget"/>
		    <h4>Analyst Price Target Upside:</h4> 
		    <input type="text" value="${stock.analystPtUpside}" name="analystPtUpside"/>
		    <input type="hidden" value="${stock.id}" name="sid"/>
		    <h4>Confirm (Make sure all fields are filled):</h4>
		    <button type="button" class="btn btn-success">
		    <input type="submit" value="Update Stock"/>
		    </button>
		    </div> 
		  </form>
	</div>
	
</body>
</html>