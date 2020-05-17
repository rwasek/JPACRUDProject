<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Film</title>
</head>
<body>
<form action="updateStock.do" method="POST">

    Stock Symbol (Ex: AAPL):
    <input type="text" value="${stock.symbol}" name="symbol"/>
    <br> 
    Company Name:
    <input type="text" value="hello" name="companyName"/>
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
    
    <input type="submit" value="Update Stock"/>
  </form>
</form>
</body>
</html>