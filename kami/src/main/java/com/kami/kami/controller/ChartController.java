package com.kami.kami.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;


import com.kami.kami.dao.ChartDAO;

@Controller
public class ChartController {
	

	
	@Autowired
	ChartDAO dao;
	
	
	@RequestMapping(value="/chartListH", method = RequestMethod.POST)
	public @ResponseBody ArrayList<String> chartListH(Model model) {

		
		String month = "201903";
		 ArrayList<String>list =  dao.barChartListH(month);
		
		
		
		return list;
	}
	
	
	
	
	@RequestMapping(value="/chartListV", method = RequestMethod.POST)
	public @ResponseBody ArrayList<String> chartListV(Model model) {


		String month = "201903";
		 ArrayList<String>list =  dao.barChartListV(month);
		
		
	
		
		return list;
	}
	
	@RequestMapping(value="/pieChartN", method = RequestMethod.POST)
	public @ResponseBody ArrayList<String> barChartD(Model model,HttpSession session) {
		String id = (String) session.getAttribute("loginId");
		

		 ArrayList<String>list =  dao.pieChartListN(id);
	
		
		return list;
	}
	
	@RequestMapping(value="/pieChartV", method = RequestMethod.POST)
	public @ResponseBody ArrayList<String> barChartV(Model model,HttpSession session) {


		String id = (String) session.getAttribute("loginId");
		

		 ArrayList<String>list =  dao.pieChartListV(id);
	
		
		return list;
	}
	

	@RequestMapping(value="/areaChartH", method = RequestMethod.POST)
	public @ResponseBody ArrayList<String> areaChartH(Model model,HttpSession session) {

		String id = (String) session.getAttribute("loginId");
	

		 ArrayList<String>list =  dao.areaChartListH(id);
		return list;
	}
	
	@RequestMapping(value="/areaChartV", method = RequestMethod.POST)
	public @ResponseBody ArrayList<String> areaChartV(Model model,HttpSession session) {

		String id = (String) session.getAttribute("loginId");
		

		 ArrayList<String>list =  dao.areaChartListV(id);
		 System.out.println(list);
		
		return list;
	}
}
