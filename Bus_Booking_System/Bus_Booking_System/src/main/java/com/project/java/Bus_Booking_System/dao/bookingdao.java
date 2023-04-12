package com.project.java.Bus_Booking_System.dao;

import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.java.Bus_Booking_System.components.Booking;

import jakarta.persistence.EntityManager;
import jakarta.transaction.Transactional;

@Repository
public class bookingdao {
	EntityManager e;

	@Autowired
	public bookingdao(EntityManager e) {
		super();
		this.e = e;
	}
	
	@Transactional
	public void addbooking(Booking b) {
		Session s = e.unwrap(Session.class);
		s.persist(b);
		s.close();
	}
	
}
