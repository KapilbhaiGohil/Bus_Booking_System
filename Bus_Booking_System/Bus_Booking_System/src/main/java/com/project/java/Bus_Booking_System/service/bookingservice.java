package com.project.java.Bus_Booking_System.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.java.Bus_Booking_System.components.Booking;
import com.project.java.Bus_Booking_System.dao.bookingdao;

@Service
public class bookingservice {
	
	@Autowired
	private bookingdao bodao;
	
	public void addbooking(Booking b) {
		bodao.addbooking(b);;
	}
}
