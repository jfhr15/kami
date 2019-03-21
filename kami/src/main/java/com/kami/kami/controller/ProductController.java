package com.kami.kami.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kami.kami.dao.ProductDAO;
import com.kami.kami.vo.Productkind;

@Controller
public class ProductController {
	
	@Autowired
	ProductDAO dao;
	
	//페이지 이동
	@RequestMapping(value = "/goProductManage", method = RequestMethod.GET)
	public String goProductManage() {
		return "admin/productManage";
	}
	
	//상품종류 전체목록 출력
	@RequestMapping(value = "/selectproductlist", method = RequestMethod.POST)
	public @ResponseBody ArrayList<Productkind> selectproductlist() {
		ArrayList<Productkind> pList = new ArrayList<Productkind>();
		pList = dao.selectproductkind();
		System.out.println(pList);
		return pList;
	}
	
	
		
	//상품종류 등록
	@RequestMapping(value = "/insertproduct", method = RequestMethod.POST)
	public @ResponseBody int insertproduct(String pk) {
		System.out.println(pk);
		Productkind pkd = new Productkind();
		pkd.setProductkind(pk);
		int result = dao.insertproductkind(pkd);
		if(result==1) {
			System.out.println("상품종류 등록 성공");
		} else {
			System.out.println("상품종류 등록 실패");
		}
		return result;
	}
	
		
	//상품종류 삭제
	@RequestMapping(value = "/deleteproduct", method = RequestMethod.GET)
	public @ResponseBody int deleteproduct(int seq) {
		System.out.println(seq);
		Productkind pkd = new Productkind();
		pkd.setKindseq(seq);
		int result = dao.deleteproductkind(pkd);
		if(result==1) {
			System.out.println("상품종류 삭제 성공");
		} else {
			System.out.println("상품종류 삭제 실패");
		}
		return result;
	}
	
	
	
	
}
