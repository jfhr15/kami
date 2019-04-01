package com.kami.kami.controller;

import java.util.ArrayList;
import java.util.HashMap;

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
	
	@RequestMapping(value = "/goLogin", method = RequestMethod.GET)
	public String goLogin() {
		
		return "admin/login";
	}
	
	@RequestMapping(value = "/goSignup", method = RequestMethod.GET)
	public String goSignup() {
		
		return "admin/register";
	}
	
	@RequestMapping(value = "/goIndex", method = RequestMethod.GET)
	public String goIndex() {
		
		return "admin/index";
	}
	
	@RequestMapping(value = "/goManagement", method = RequestMethod.GET)
	public String goManagement() {
		
		return "admin/management";
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(Idinfo idinfo ,HttpSession session, Model model) {
		Idinfo result = dao.login(idinfo);
		if (result == null) {
			return "admin/login";
		} else {
			session.setAttribute("loginId", result.getId());
			session.setAttribute("type", result.getType());
			if(result.getType() == 0) {
				Employee employee = dao.employeeTypeCheck(result.getId());
				System.out.println(employee.getEmp_flag());
				session.setAttribute("empType", employee.getPositionseq());
			} else if(result.getType() == 1) {
				Member member = dao.memberTypeCheck(result.getId());
				session.setAttribute("memType", member.getMem_flag());
			}
		}
		return "redirect:/";
	}
	
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpSession session) {
		session.setAttribute("loginId", null);
		session.setAttribute("empType", null);
		session.setAttribute("memType", null);
		
		return "redirect:/";
	}
	
	@RequestMapping(value = "/goSignUp", method = RequestMethod.GET)
	public String goSignUp() {
		return "admin/register";
	}
	
	
	@RequestMapping(value = "/insertHuman", method = RequestMethod.POST)
	public String insertHuman(Idinfo idinfo, int division) {
		idinfo.setType(division);
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
	
	@RequestMapping(value = "/goSearchPopup", method = RequestMethod.GET)
	public String goSearchPopup() {
		return "admin/searchPopup";
	}
	
	@RequestMapping(value = "/idSearch", method = RequestMethod.POST)
	public @ResponseBody Idinfo idSearch(String is_name, String is_phone, String is_email) {
		HashMap<Object, Object> map = new HashMap<Object, Object>();
		map.put("name", is_name);
		map.put("phone", is_phone);
		map.put("email", is_email);
		
		Idinfo idinfo = dao.idSearch(map);
		
		return idinfo;
	}
	
	@RequestMapping(value = "/pwSearch", method = RequestMethod.POST)
	public @ResponseBody Idinfo pwSearch(String is_id, String is_phone, String is_email) {
		HashMap<Object, Object> map = new HashMap<Object, Object>();
		map.put("id", is_id);
		map.put("phone", is_phone);
		map.put("email", is_email);
		
		Idinfo idinfo = dao.pwSearch(map);
		
		return idinfo;
	}
}
