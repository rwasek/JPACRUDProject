<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
    <fmt:formatNumber value="${value}" type="currency" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Stock details</title>
</head>
<body>
	<h1>Ticker Symbol: $${stock.symbol}</h1>
	<p>Company Name: ${stock.companyName}<p>
	<p>Exchange: ${stock.exchange}<p>
	<p>Price as of May 15th, 2020: <fmt:formatNumber value="${stock.midMay2020Price}" type="currency"/></p>
	<p>Annual Dividend/Yield: ${stock.dividendYield}%</p>
	<p>52-Week High: <fmt:formatNumber value="${stock.fiftyTwoWeekHigh}" type="currency"/></p>
	<p>52-Week Low: <fmt:formatNumber value="${stock.fiftyTwoWeekLow}" type="currency"/></p>
	<p>Average Analyst Price Target: <fmt:formatNumber value="${stock.analystPriceTarget}" type="currency"/></p>
	<p>Analyst PT Upside/Downside: ${stock.analystPtUpside}</p>
	<form action="home.do" method="GET">
  		<input type="submit" value="Back to Home!" />
	</form>
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
</body>
</html>