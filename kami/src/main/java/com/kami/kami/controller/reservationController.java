package com.kami.kami.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class reservationController {
	
	@RequestMapping(value = "/goReservation", method = RequestMethod.GET)
	public String goReservation() {
		
		return "reservation/reservation";
	}
}
