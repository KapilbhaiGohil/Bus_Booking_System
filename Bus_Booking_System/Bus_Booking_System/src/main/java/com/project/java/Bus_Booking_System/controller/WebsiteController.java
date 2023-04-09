package com.project.java.Bus_Booking_System.controller;

import java.net.http.HttpRequest;
import java.sql.Date;
import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.project.java.Bus_Booking_System.components.Bus;
import com.project.java.Bus_Booking_System.components.Station;
import com.project.java.Bus_Booking_System.components.Volvo;
import com.project.java.Bus_Booking_System.service.Busservice;
import com.project.java.Bus_Booking_System.service.Routeservice;
import com.project.java.Bus_Booking_System.service.Stationservice;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class WebsiteController {
	 
	@Autowired
	Routeservice r;
	@Autowired
	Busservice b;
	@Autowired
	Stationservice st;
	
	@RequestMapping("/searchresult")
	public String searchresult(HttpServletRequest req,String source,String destination,Date date) {
		HttpSession s = req.getSession();
		System.out.println(source+ destination+date);
		Station so = st.getStationByName(source);
		Station dest = st.getStationByName(destination);
		List<Bus> bushes = b.getBusbyroute(so, dest);
		s.setAttribute("bushes", bushes);
		s.setAttribute("boo", "hello");
		return "website/searchresult";
	}
	
	@RequestMapping("/seatbook")
	public String seatbook(int seatno,int seatno2,HttpServletRequest req,int busid) {
		HttpSession s = req.getSession();
		System.out.println(busid);
		System.out.println(seatno);
		System.out.println(seatno2);
		String type = b.getbustypebyid(busid);
		if(type.equals("Volvo")) {
			 Volvo v = (Volvo) b.getbusbyid(busid);
			 boolean []seat = v.getSeats();
			 seat[seatno] = true;
			 seat[seatno2] = true;
			 v.setSeats(seat);
			 b.updatebus(v);
			 return "website/sucess";
		}
		return null;
	}
}
