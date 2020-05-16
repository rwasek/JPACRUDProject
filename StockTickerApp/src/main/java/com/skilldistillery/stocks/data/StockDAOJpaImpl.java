package com.skilldistillery.stocks.data;

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

}
