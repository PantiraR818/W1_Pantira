package com;

public class Course {
	private String code;
	private String title;
	private int duration;
	private double price;
	
	public Course() {
		
	}
	public Course(String code, String title, int duration, double price) {
		super();
		this.code = code;
		this.title = title;
		this.duration = duration;
		this.price = price;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public int getDuration() {
		return duration;
	}

	public void setDuration(int duration) {
		this.duration = duration;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}
	
	
	
	
}
