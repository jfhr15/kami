package com.kami.kami.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kami.kami.dao.ProductDAO;
import com.kami.kami.vo.Productkind;

@Controller
public class ProductController {
	
	@Autowired
	ProductDAO dao;
	
	//페이지 이동
	@RequestMapping(value = "/goProductManage", method = RequestMethod.GET)
	public String goProductManage() {
		return "productManage";
	}
	
	//상품종류 전체목록 출력
	
	
	
	
	
		
	//상품종류 등록
	
	
		
	//상품종류 삭제
	
	
	
	
	
}
