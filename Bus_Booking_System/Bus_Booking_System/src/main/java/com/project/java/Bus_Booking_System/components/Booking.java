package com.project.java.Bus_Booking_System.components;

import org.hibernate.annotations.ManyToAny;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToOne;

@Entity
public class Booking {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column
	private int id;
	@Column
	private int total_price;
	@ManyToOne(cascade = CascadeType.ALL)
	private Bus bus;
	@Column
	private int seatno;
	@Column
	private int from;
	@Column
	private int to;
	@Column
	private int distance;
}
