package com.kami.kami.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kami.kami.dao.ManagementDAO;
import com.kami.kami.vo.Haircolor;
import com.kami.kami.vo.Procedure;

@Controller
public class managementController {

	@Autowired
	ManagementDAO mDao;
	
	@RequestMapping(value = "/insertProcedure", method = RequestMethod.POST)
	public @ResponseBody String insertProcedure(Procedure procedure) {
		mDao.insertProcedure(procedure);
		
		return "SUCCESS";
	}
	
	@RequestMapping(value = "/selectProcedure", method = RequestMethod.GET)
	public @ResponseBody ArrayList<Procedure> selectProcedure() {
		ArrayList<Procedure> pList = mDao.selectProcedure();
		
		return pList;
	}
}
