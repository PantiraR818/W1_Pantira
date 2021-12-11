package com;

import java.util.ArrayList;

public class CourseService {

	private ArrayList<Course> courses = new ArrayList<Course>();
	private Course course = new Course();
	
	public CourseService() {
		courses.add(new Course("A1001","Basic Java Programming",8,5000));
		courses.add(new Course("B1002","Advanced Java Programming",8,5500));
		courses.add(new Course("C1003","Java Web Development",9,6500));
		courses.add(new Course("D1004","Database Design and lmplementation: MySQL",5,6000));
		courses.add(new Course("E1005","MySQL for Adminsitrator",4,6000));
	}
	
	public ArrayList<Course> getCourses() {
		return courses;
	}
	public void setCourses(ArrayList<Course> courses) {
		this.courses = courses;
	}
	public Course getCourse(int no) {
		return this.courses.get(no);
	}
	public void setCourse(Course course) {
		this.course  = course;	
	}
}
