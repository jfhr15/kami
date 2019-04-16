package com.kami.kami.controller;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.kami.kami.dao.ProcedureDAO;
import com.kami.kami.vo.Procedure;

@Controller
public class PictureController {
	
	@Autowired
	private static final String UPLOADPATH="C:/upload/";
	
	//페이지 이동
		@RequestMapping(value = "/goPicture", method = RequestMethod.GET)
		public String goPicture() {
			return "admin/pictureManage";
		}
		
	
}
