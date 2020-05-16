package com.skilldistillery.stocks.entities;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;

import javax.crypto.AEADBadTagException;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

class StockTest {
	
	private static EntityManagerFactory emf;
	private EntityManager em;
	private Stock stock;

	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		emf = Persistence.createEntityManagerFactory("Stocks");
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		emf.close();
	}

	@BeforeEach
	void setUp() throws Exception {
		em = emf.createEntityManager();
		stock = em.find(Stock.class, 9);
	}

	@AfterEach
	void tearDown() throws Exception {
		em.close();
		stock = null;
	}

//	@Test
//	void test_for_Apple_id_2() {
//		assertNotNull(stock);
//		assertEquals("AAPL", stock.getSymbol());
//		assertEquals("Apple", stock.getCompanyName());
//		assertEquals("NASDAQ", stock.getExchange());
//		assertEquals(307.71, stock.getMidMay2020Price());
//		assertEquals(1.06, stock.getDividendYield());
//		assertEquals(327.85, stock.getFiftyTwoWeekHigh());
//		assertEquals(170.27, stock.getFiftyTwoWeekLow());
//		assertEquals(299.24, stock.getAnalystPriceTarget());
//		assertEquals("2.75% downside", stock.getAnalystPtUpside());
//	}
	
	@Test
	void test_for_UAL_id_9() {
		assertNotNull(stock);
		assertEquals("UAL", stock.getSymbol());
		assertEquals("United Continental", stock.getCompanyName());
		assertEquals("NASDAQ", stock.getExchange());
		assertEquals(19.92, stock.getMidMay2020Price());
		assertEquals(0.00, stock.getDividendYield());
		assertEquals(96.03, stock.getFiftyTwoWeekHigh());
		assertEquals(17.80, stock.getFiftyTwoWeekLow());
		assertEquals(70.57, stock.getAnalystPriceTarget());
		assertEquals("254.27% upside", stock.getAnalystPtUpside());
	}

}
