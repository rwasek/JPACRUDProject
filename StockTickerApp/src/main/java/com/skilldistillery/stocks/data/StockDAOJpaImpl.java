package com.skilldistillery.stocks.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.stocks.entities.Stock;

@Service
@Transactional
public class StockDAOJpaImpl implements StockDAO {
	@PersistenceContext
	private EntityManager em;
	
	
	@Override
	public Stock findById(int id) {
		return em.find(Stock.class, id);
	}

	@Override
	public List<Stock> findAll() {
		String jpql = "SELECT s FROM Stock s";
		List<Stock> stocks = em.createQuery(jpql, Stock.class).getResultList();
		em.close();
		return stocks;
	}

	@Override
	public Stock findBySymbol(String symbol) {
		Stock stock = null;
		String jpql = "SELECT s FROM Stock s WHERE s.symbol = :symbol";
		stock = em.createQuery(jpql, Stock.class).setParameter("symbol", symbol).getSingleResult();
		em.close();
		return stock;
	}

	@Override
	public Stock createStock(Stock stock) {
		
		em.persist(stock);
		em.flush();
		em.close();
		return stock;
	}

	@Override
	public boolean deleteStock(String symbol) {
		Stock stock = null;
		String jpql = "SELECT s FROM Stock s WHERE s.symbol = :symbol";
		stock = em.createQuery(jpql, Stock.class).setParameter("symbol", symbol).getSingleResult();
		em.remove(stock);
		boolean stillContains = !em.contains(stock);
		
		em.flush();
//		em.clear();
		return stillContains;
	}

	@Override
	public Stock updateStock(int id, Stock stock) {
		Stock updatedStock = em.find(Stock.class, id);
		updatedStock.setSymbol(stock.getSymbol());
		updatedStock.setCompanyName(stock.getCompanyName());
		updatedStock.setExchange(stock.getExchange());
		updatedStock.setMidMay2020Price(stock.getMidMay2020Price());
		updatedStock.setDividendYield(stock.getDividendYield());
		updatedStock.setFiftyTwoWeekHigh(stock.getFiftyTwoWeekHigh());
		updatedStock.setFiftyTwoWeekLow(stock.getFiftyTwoWeekLow());
		updatedStock.setAnalystPriceTarget(stock.getAnalystPriceTarget());;
		updatedStock.setAnalystPtUpside(stock.getAnalystPtUpside());
		em.flush();
		em.close();
		return updatedStock;
	}
	
	// ActorDAOImpl as reference.  Dont do the transaction stuff!
	// we just do the em.persist when create
	// em.find
	// em.flush

}
