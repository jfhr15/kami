package com.kami.kami.controller;
import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kami.kami.dao.ProductDAO;
import com.kami.kami.vo.Product;

@Controller
public class ProductCostomerController {

	@Autowired
	ProductDAO dao;

	//페이지 이동
	@RequestMapping(value = "/goProduct", method = RequestMethod.GET)
	public String goProduct() {
	
	return "product/product";
	}
	
	
	//상품 전체 출력
	@RequestMapping(value = "/selectAll", method = RequestMethod.POST)
	public @ResponseBody ArrayList<Product> selectAll() {
		ArrayList<Product> pList = new ArrayList<Product>();
		pList = dao.selectProduct();
		System.out.println(pList);
		return pList;
	}
	
	
}
