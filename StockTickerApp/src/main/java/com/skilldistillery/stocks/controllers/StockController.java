package com.skilldistillery.stocks.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.skilldistillery.stocks.data.StockDAO;
import com.skilldistillery.stocks.entities.Stock;

@Controller
public class StockController {
	
	@Autowired
	private StockDAO dao;
	
	
	@RequestMapping(path= {"/", "home.do"})
	public String index(Model model) {
		List<Stock> stocks = dao.findAll();
		model.addAttribute("stocks", stocks);
		return "index";
//	  return "WEB-INF/index.jsp";
	  // return "index"; // if using a ViewResolver.
	}
	
	
	@RequestMapping(path="getStock.do")
	public String findStock(@RequestParam Integer sid, Model model) {
		Stock s = dao.findById(sid);
		model.addAttribute("stock", s);
		return "stockDetail";
	}
	
	@RequestMapping(path="getStockSymbol.do")
	public String findStockBySymbol(@RequestParam String symbol, Model model) {
		Stock s = dao.findBySymbol(symbol);
		if (s != null) {
		model.addAttribute("stock", s);
		return "stockDetail";
		}
		else {
			return "error";
		}
	}
	
	@RequestMapping(path="createNewStock.do", method=RequestMethod.GET)
	public ModelAndView viewCreateStockBySymbol() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("createstock");
		return mv;
	}
	
	@RequestMapping(path="createNewStock.do", method=RequestMethod.POST)
	public String createStockBySymbol(@RequestParam Stock stock, Model model) {
		Stock s = dao.createStock(stock);
//		if (s != null) {
			model.addAttribute("stock", s);
			return "stockDetail";
		}
//		else {
//			return "error";
//		}
//	}
}
