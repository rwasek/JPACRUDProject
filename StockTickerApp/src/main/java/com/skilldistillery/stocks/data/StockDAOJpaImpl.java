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
	
	// ActorDAOImpl as reference.  Dont do the transaction stuff!
	// we just do the em.persist when create
	// em.find
	// em.flush

}
