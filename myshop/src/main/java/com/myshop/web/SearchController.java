package com.myshop.web;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;



@Controller
@RequestMapping("/search")
public class SearchController {
	
	
	@PersistenceContext(unitName = "persistenceUnit")
	private EntityManager em;
	
	@RequestMapping(value = "/product")
	public String searchProduct(Model  model,  HttpServletRequest request){
		return null;
	}
	
	@RequestMapping(value = "/order")
	public String searchOrder(Model  model,  HttpServletRequest request){
		return null;
	}
}
