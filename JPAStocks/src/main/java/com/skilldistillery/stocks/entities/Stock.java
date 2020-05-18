package com.skilldistillery.stocks.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.validation.constraints.Size;

@Entity
public class Stock {
// TODO: Finish up annotations and then change forms to form:form
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	@Size(min=0, max=15)
	private String symbol;
	
	@Column(name = "company_name")
	private String companyName;
	
	private String exchange;
	
	@Column(name = "may_15_2020_price")
	private Double midMay2020Price;
	
	@Column(name = "dividend_yield")
	private Double dividendYield;
	
	@Column(name = "52_week_high")
	private Double fiftyTwoWeekHigh;
	
	@Column(name = "52_week_low")
	private Double fiftyTwoWeekLow;
	
	@Column(name = "analyst_price_target")
	private Double analystPriceTarget;
	
	@Column(name = "analyst_price_target_upside")
	private String analystPtUpside;

	// constructors
	public Stock() {}
	
	public Stock(String symbol) {
		this.symbol = symbol;
	}
	
	public Stock(int id, String symbol, String companyName, String exchange, Double midMay2020Price,
			Double dividendYield, Double fiftyTwoWeekHigh, Double fiftyTwoWeekLow, Double analystPriceTarget,
			String analystPtUpside) {
		this.id = id;
		this.symbol = symbol;
		this.companyName = companyName;
		this.exchange = exchange;
		this.midMay2020Price = midMay2020Price;
		this.dividendYield = dividendYield;
		this.fiftyTwoWeekHigh = fiftyTwoWeekHigh;
		this.fiftyTwoWeekLow = fiftyTwoWeekLow;
		this.analystPriceTarget = analystPriceTarget;
		this.analystPtUpside = analystPtUpside;
	}

	// methods
	
	
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Stock [id=");
		builder.append(id);
		builder.append(", symbol=");
		builder.append(symbol);
		builder.append(", companyName=");
		builder.append(companyName);
		builder.append(", exchange=");
		builder.append(exchange);
		builder.append(", midMay2020Price=");
		builder.append(midMay2020Price);
		builder.append(", dividendYield=");
		builder.append(dividendYield);
		builder.append(", fiftyTwoWeekHigh=");
		builder.append(fiftyTwoWeekHigh);
		builder.append(", fiftyTwoWeekLow=");
		builder.append(fiftyTwoWeekLow);
		builder.append(", analystPriceTarget=");
		builder.append(analystPriceTarget);
		builder.append(", analystPtUpside=");
		builder.append(analystPtUpside);
		builder.append("]");
		return builder.toString();
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getSymbol() {
		return symbol;
	}

	public void setSymbol(String symbol) {
		this.symbol = symbol;
	}

	public String getCompanyName() {
		return companyName;
	}

	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}

	public String getExchange() {
		return exchange;
	}

	public void setExchange(String exchange) {
		this.exchange = exchange;
	}

	public Double getMidMay2020Price() {
		return midMay2020Price;
	}

	public void setMidMay2020Price(Double midMay2020Price) {
		this.midMay2020Price = midMay2020Price;
	}

	public Double getDividendYield() {
		return dividendYield;
	}

	public void setDividendYield(Double dividendYield) {
		this.dividendYield = dividendYield;
	}

	public Double getFiftyTwoWeekHigh() {
		return fiftyTwoWeekHigh;
	}

	public void setFiftyTwoWeekHigh(Double fiftyTwoWeekHigh) {
		this.fiftyTwoWeekHigh = fiftyTwoWeekHigh;
	}

	public Double getFiftyTwoWeekLow() {
		return fiftyTwoWeekLow;
	}

	public void setFiftyTwoWeekLow(Double fiftyTwoWeekLow) {
		this.fiftyTwoWeekLow = fiftyTwoWeekLow;
	}

	public Double getAnalystPriceTarget() {
		return analystPriceTarget;
	}

	public void setAnalystPriceTarget(Double analystPriceTarget) {
		this.analystPriceTarget = analystPriceTarget;
	}

	public String getAnalystPtUpside() {
		return analystPtUpside;
	}

	public void setAnalystPtUpside(String analystPtUpside) {
		this.analystPtUpside = analystPtUpside;
	}

	
	
	

	
	
	
}
