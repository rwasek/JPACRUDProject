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
	
	
	@RequestMapping(path="getStock.do", method=RequestMethod.GET)
	public String findStock(@RequestParam Integer sid, Model model) {
		Stock s = dao.findById(sid);
		model.addAttribute("stock", s);
		return "stockDetail";
	}
	
	@RequestMapping(path="getStockSymbol.do", method=RequestMethod.GET)
	public String findStockBySymbol(@RequestParam String stockSymbol, Model model) {
		Stock s = dao.findBySymbol(stockSymbol);
		if (s != null) {
		model.addAttribute("stock", s);
		return "stockDetail";
		}
		else {
			return "error";
		}
	}
	
	@RequestMapping(path="createANewStock.do", method=RequestMethod.GET)
	public ModelAndView viewCreateStock() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("createstock");
		return mv;
	}
	
	@RequestMapping(path="createStock.do", method=RequestMethod.POST)
	public String createStock(Stock stock, Model model) {
		Stock s = dao.createStock(stock);
//		if (s != null) {
			model.addAttribute("stock", s);
			return "stockDetail";
		}
//		else {
//			return "error";
//		}
//	}
	
	@RequestMapping(path="deleteStock.do", method=RequestMethod.POST)
	public String deleteStock(String stockSymbol, Model model) {
		boolean deleteSuccess = dao.deleteStock(stockSymbol);
		model.addAttribute("result", deleteSuccess);
//		return "deleteSuccess";
		return "index";
	}
	
	@RequestMapping(path="updateStockView.do", method=RequestMethod.POST)
	public String updateStockPage(@RequestParam Integer sid, Model model) {
		Stock stockToUpdate = dao.findById(sid);
		model.addAttribute("stock", stockToUpdate);
		return "updateStock";
	}
	
	@RequestMapping(path="updateStock.do", method= RequestMethod.POST)
	public String updateStock(@RequestParam Integer sid, Stock stockToUpdate, Model model) {
		Stock updatedStock = dao.updateStock(sid, stockToUpdate);
		model.addAttribute("stock", updatedStock);
		return "stockDetail";
	}
}
