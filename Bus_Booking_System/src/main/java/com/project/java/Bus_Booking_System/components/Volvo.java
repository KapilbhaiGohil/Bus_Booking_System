package com.project.java.Bus_Booking_System.components;

import jakarta.persistence.Column;
import jakarta.persistence.DiscriminatorColumn;
import jakarta.persistence.DiscriminatorValue;
import jakarta.persistence.Entity;

@Entity
@DiscriminatorValue("Volvo")
public class Volvo extends Bus {
	@Column(name = "max speed")
	private int speedperhour;
	@Column(name = "price per seat")
	private int priceperseat;
	@Column(name = "Total no of seat")
	private boolean[] seats = new boolean[30];
	
	public int getSpeedperhour() {
		return speedperhour;
	}
	public void setSpeedperhour(int speedperhour) {
		this.speedperhour = speedperhour;
	}
	public int getPriceperseat() {
		return priceperseat;
	}
	public void setPriceperseat(int priceperseat) {
		this.priceperseat = priceperseat;
	}
	public boolean[] getSeats() {
		return seats;
	}
	public void setSeats(int number) {
		this.seats[number] = false;
	}
	public Volvo(int speedperhour, int priceperseat) {
		super();
		this.speedperhour = speedperhour;
		this.priceperseat = priceperseat;
	}
	
}
