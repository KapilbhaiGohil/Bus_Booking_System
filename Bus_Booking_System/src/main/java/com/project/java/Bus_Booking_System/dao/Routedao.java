package com.project.java.Bus_Booking_System.dao;

import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.java.Bus_Booking_System.components.Route;

import jakarta.persistence.EntityManager;
import jakarta.transaction.Transactional;

@Repository
public class Routedao {
	EntityManager e;
	
	@Autowired
	public Routedao(EntityManager e) {
		this.e = e;
	}
	@Transactional
	public void addRoute(Route a) {
		Session s = e.unwrap(Session.class);
		s.persist(a);
		s.close();
	}
}
