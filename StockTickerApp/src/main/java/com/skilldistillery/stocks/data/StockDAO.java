package com.skilldistillery.stocks.data;

import java.util.List;

import com.skilldistillery.stocks.entities.Stock;

public interface StockDAO {
	public Stock findById(int id);
	public List<Stock> findAll();
	public Stock findBySymbol(String symbol);
	public Stock createStock(Stock stock);
	public boolean deleteStock(String symbol);
	public Stock updateStock(int id, Stock stock);
}
