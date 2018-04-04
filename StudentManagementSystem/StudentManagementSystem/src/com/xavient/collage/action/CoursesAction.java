package com.xavient.collage.action;

import com.my.datacon.User;
import com.opensymphony.xwork2.ActionSupport;
import com.xavient.collage.DAO.CoursesDao;

import com.xavient.model.Courses;

public class CoursesAction extends ActionSupport {
	private Courses course;
	private User user;

	public Courses getCourse() {
		return course;
	}

	public void setCourse(Courses course) {
		this.course = course;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String generateCourse() {

		course=CoursesDao.details(user.getEmail());
		setCourse(course);

		
		return "success";
	}

}
