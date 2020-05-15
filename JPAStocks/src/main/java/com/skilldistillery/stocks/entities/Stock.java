package com.skilldistillery.stocks.entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Stock {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String symbol;
	
	
	
	
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
	
	public Stock(int id, String symbol) {
		super();
		this.id = id;
		this.symbol = symbol;
	}
	
	public Stock() {
		super();
	}
	@Override
	public String toString() {
		return "Stock [id=" + id + ", symbol=" + symbol + "]";
	}
	
	
	
}
