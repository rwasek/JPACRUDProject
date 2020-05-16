package com.skilldistillery.stocks;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;

@SpringBootApplication
//@EntityScan("com.skilldistillery.stocks")
public class StockTickerAppApplication {

	public static void main(String[] args) {
		SpringApplication.run(StockTickerAppApplication.class, args);
	}

}
