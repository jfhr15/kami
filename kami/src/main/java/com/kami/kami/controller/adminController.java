package com.kami.kami.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


import com.kami.kami.dao.AdminDAO;
import com.kami.kami.vo.Employee;

@Controller
public class adminController {
	
	@Autowired
	AdminDAO dao;
	
	//���� �α���
	@RequestMapping(value = "/selectEmployee", method = RequestMethod.POST)
	public String selectEmployee(Employee employee ,HttpSession session) {
		System.out.println(employee);
		
		Employee result = dao.selectEmployee(employee);

		if (result == null) {
			return "admin/login";
		} else {
			session.setAttribute("loginId", result.getEmp_id());
		}
	
		return "admin/index";
	}
	
	//���� ȸ������ �������� �̵�
	@RequestMapping(value = "/goSignUp", method = RequestMethod.GET)
	public String goSignUp() {
		return "admin/register";
	}
	
	
	@RequestMapping(value = "/insertEmployee", method = RequestMethod.POST)
	public String insertEmployee(Employee employee) {
		System.out.println(employee);
		int result = dao.insertEmployee(employee);
		if (result == 0) {
			return "redirect:/goSignUp";
		}
		return "redirect:/";
	}

}
