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
	<form action="updateStock.do" method="POST">
	
	    Stock Symbol (Ex: AAPL):
	    <input type="text" value="${stock.symbol}" name="symbol"/>
	    <br> 
	    Company Name:
	    <input type="text" value="${stock.companyName}" name="companyName"/>
	    <br> 
	    Exchange (Ex: NASDAQ, NYSE, OTC):
	    <input type="text" value="${stock.exchange}" name="exchange"/>
	    <br>
	    Price as of Market Close 5/15/2020:
	    <input type="number" value="${stock.midMay2020Price}" step="0.01" name="midMay2020Price"/>
	    <br>
	    Annual Dividend/Yield (Ex: 4.00): 
	    <input type="number" value="${stock.dividendYield}" step="0.01" name="dividendYield"/>
	    <br>
	    52-Week High: 
	    <input type="number" value="${stock.fiftyTwoWeekHigh}" step="0.01" name="fiftyTwoWeekHigh"/>
	    <br>
	    52-Week Low: 
	    <input type="number" value="${stock.fiftyTwoWeekLow}" step="0.01" name="fiftyTwoWeekLow"/>
	    <br>
	    Analyst Price Target: 
	    <input type="number" value="${stock.analystPriceTarget}" step="0.01" name="analystPriceTarget"/>
	   	<br>
	    Analyst Price Target Upside: 
	    <input type="text" value="${stock.analystPtUpside}" name="analystPtUpside"/>
	    <br>
	    <input type="hidden" value="${stock.id}" name="sid"/>
	    
	    <input type="submit" value="Update Stock"/>
	  </form>
	
</body>
</html>