package com.skilldistillery.stocks.entities;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;

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
		stock = em.find(Stock.class, 1);
	}

	@AfterEach
	void tearDown() throws Exception {
		em.close();
		stock = null;
	}

	@Test
	void test() {
		assertNotNull(stock);
		assertEquals("$AAL", stock.getSymbol());
	}

}
