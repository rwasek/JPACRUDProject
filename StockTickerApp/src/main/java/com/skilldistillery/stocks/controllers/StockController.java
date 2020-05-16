package com.skilldistillery.stocks.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.skilldistillery.stocks.data.StockDAO;
import com.skilldistillery.stocks.entities.Stock;

@Controller
public class StockController {
	
	@Autowired
	private StockDAO dao;
	
	@RequestMapping(path="getStock.do")
	public String findStock(@RequestParam Integer sid, Model model) {
		Stock s = dao.findById(sid);
		model.addAttribute("stock", s);
		return "stockDetail";
	}
}
