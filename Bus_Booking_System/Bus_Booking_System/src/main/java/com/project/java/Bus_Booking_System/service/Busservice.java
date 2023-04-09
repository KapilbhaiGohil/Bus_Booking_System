package com.project.java.Bus_Booking_System.service;

import java.util.List;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.java.Bus_Booking_System.components.Bus;
import com.project.java.Bus_Booking_System.components.Station;
import com.project.java.Bus_Booking_System.dao.Busdao;

@Service
public class Busservice {
	
	@Autowired
	private Busdao bdao;
	
	public void addbus(Bus a) {
		bdao.addbus(a);
	}
	
	public List<Bus> getBusbyroute(Station source,Station dest) {
		List<Bus> bushes = bdao.getbusbySouranddest(source, dest);
		return bushes;
	}
	
	public Bus getbusbyid(int a) {
		return bdao.getbusbyid(a);
	}
	
	public void updatebus(Bus a) {
		bdao.updatebus(a);
	}
	public String getbustypebyid(int id) {
		return bdao.getbustype(id);
	}
}
