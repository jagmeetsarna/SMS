package com.xavient.collage.action;

import java.util.List;

import com.opensymphony.xwork2.ActionSupport;
import com.xavient.collage.DAO.AttendanceDao;
import com.xavient.model.Attendance;

public class AttendanceAction extends ActionSupport {

	/**
		 * 
		 */
	private static final long serialVersionUID = 1L;
	private int attendance;
	private String name;
	private int id;
	private String email;
	


	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String saveAndViewAttendance() {
		Attendance attendance = new Attendance();
		attendance = AttendanceDao.saveAndView(this);

		return SUCCESS;
	}

	/*public String generateAttendance() {

		Attendance attendance = new Attendance();
		attendance = AttendanceDao.viewAttendance(getId());
		return SUCCESS;
	}*/

	public String display() {
		return NONE;
	}

	public void setAttendance(int attendance) {
		this.attendance = attendance;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getAttendance() {
		return attendance;
	}

}
