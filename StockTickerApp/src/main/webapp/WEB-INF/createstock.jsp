<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="style/style.css">
<title>Stock Creation</title>
</head>
<body>
	<form action="createStock.do" method="POST">
	
	
    Stock Symbol (Ex: AAPL):
    <input type="text" name="symbol"/>
    <br> 
    Company Name:
    <input type="text" name="companyName"/>
    <br> 
    Exchange (Ex: NASDAQ, NYSE, OTC):
    <input type="text" name="exchange"/>
    <br>
    Price as of Market Close 5/15/2020:
    <input type="number" step="0.01" name="midMay2020Price"/>
    <br>
    Annual Dividend/Yield (Ex: 4.00): 
    <input type="number" step="0.01" name="dividendYield"/>
    <br>
    52-Week High: 
    <input type="number" step="0.01" name="fiftyTwoWeekHigh"/>
    <br>
    52-Week Low: 
    <input type="number" step="0.01" name="fiftyTwoWeekLow"/>
    <br>
    Analyst Price Target: 
    <input type="number" step="0.01" name="analystPriceTarget"/>
   	<br>
    Analyst Price Target Upside: 
    <input type="text" name="analystPtUpside"/>
    <br>
    
    <input type="submit" value="Add Stock Data"/>
  </form>
  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
</body>
</html>