package com.myshop.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.myshop.domain.Product;

@Controller
@RequestMapping("/search")
public class SearchController {
	
	@RequestMapping(value = "/product")
	public String searchProduct(Model  model,  HttpServletRequest request){
				
		return "redirect: /products/productList";
	}
}
