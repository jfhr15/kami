package com.kami.kami.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kami.kami.dao.ProductDAO;

@Controller
public class ProductController {
	
	@Autowired
	ProductDAO dao;
	
	@RequestMapping(value = "/goProductManage", method = RequestMethod.GET)
	public String goProductManage() {
		return "productManage";
	}
	
	
}
