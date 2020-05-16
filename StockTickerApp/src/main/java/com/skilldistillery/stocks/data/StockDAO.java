package com.skilldistillery.stocks.data;

import com.skilldistillery.stocks.entities.Stock;

public interface StockDAO {
	public Stock findById(int id);
}
