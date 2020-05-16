<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Stock details</title>
</head>
<body>
	<h1>Stock: ${stock.symbol}</h1>
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
  "symbol": "NASDAQ:${stock.symbol}",
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