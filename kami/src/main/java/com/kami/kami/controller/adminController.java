package com.kami.kami.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kami.kami.dao.AdminDAO;
import com.kami.kami.vo.Employee;
import com.kami.kami.vo.Idinfo;
import com.kami.kami.vo.Member;

@Controller
public class adminController {
	
	@Autowired
	AdminDAO dao;
	
	
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(Idinfo idinfo ,HttpSession session, Model model) {
		Idinfo result = dao.login(idinfo);
		if (result == null) {
			return "admin/login";
		} else {
			session.setAttribute("loginId", result.getId());
		}
		return "admin/index";
	}
	
	@RequestMapping(value = "/goSignUp", method = RequestMethod.GET)
	public String goSignUp() {
		return "admin/register";
	}
	
	
	@RequestMapping(value = "/insertHuman", method = RequestMethod.POST)
	public String insertHuman(Idinfo idinfo, int division) {
		int result = dao.insertIdinfo(idinfo);
		if (result == 0) {
			return "redirect:/goSignUp";
		} else {
			if(division == 0) {
				Employee employee = new Employee();
				employee.setEmp_id(idinfo.getId());
				int re = dao.insertEmployee(employee);
				if (re == 0) {
					return "redirect:/goSignUp";
				}
			} else if(division == 1) {
				Member member = new Member();
				member.setMem_id(idinfo.getId());
				int re = dao.insertMember(member);
				if (re == 0) {
					return "redirect:/goSignUp";
				}
			}
		}
		return "redirect:/";
	}
	
	@RequestMapping(value="/idcheck",method=RequestMethod.GET)
	public @ResponseBody String idcheck(String id) {
		ArrayList<Idinfo> list=dao.selectId();
		for (Idinfo idinfo : list) {
			if (id.equals(idinfo.getId())) {
				return "duplicated";
			}
		}
		return "success";
	}
}
