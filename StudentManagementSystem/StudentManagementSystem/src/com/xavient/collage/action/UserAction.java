package com.xavient.collage.action;

import java.util.ArrayList;
import java.util.List;

import com.my.datacon.DataConnection;
import com.my.datacon.User;
import com.opensymphony.xwork2.ActionSupport;
import com.xavient.collage.DAO.AttendanceDao;
import com.xavient.collage.DAO.CoursesDao;
import com.xavient.collage.DAO.LoginDao;
import com.xavient.collage.DAO.RegisterDao;
import com.xavient.model.Attendance;
import com.xavient.model.Feedback;

public class UserAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String msg;
	private Attendance attendance;
	private Feedback feedback;

	private String emailId;
	private User user;

	private int userId;
	private List courseList = new ArrayList();
	private List list = new ArrayList();

	private String name;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Attendance getAttendance() {
		return attendance;
	}

	public void setAttendance(Attendance attendance) {
		this.attendance = attendance;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public String getEmailId() {
		return emailId;
	}

	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}
	

	public Feedback getFeedback() {
		return feedback;
	}

	public void setFeedback(Feedback feedback) {
		this.feedback = feedback;
	}

	public List getCourseList() {
		return courseList;
	}

	public void setCourseList(List courseList) {
		this.courseList = courseList;
	}

	public String getAboutDetails() {

		user = LoginDao.userDetail(getEmailId());
		setUser(user);

		return "user";
	}

	public String generateCourse() {
		if (!getCourseList().isEmpty()) {
			getCourseList().clear();

		}
		courseList = CoursesDao.Details(getEmailId());

		return SUCCESS;
	}

	public String generateAttendance() {

		Attendance attendance = new Attendance();
		attendance = AttendanceDao.viewAttendance(getUserId());
		setAttendance(attendance);
		return SUCCESS;
	}

	public String deleteUser() {

		RegisterDao.delete(getUserId());

		setMsg("Deleted");
		return SUCCESS;
	}

	public String generateUser() {

		user = RegisterDao.generate(getUserId());
		setUser(user);

		setMsg("Generated");
		return SUCCESS;
	}

	public String searchStudent() {

		list = DataConnection.searchStudent(getName());
		return SUCCESS;

	}
	/*public String feedBackStudent() {

		list = DataConnection.feedbackStudent(getName());
		return SUCCESS;

	}*/

	public List getList() {
		return list;
	}

	public void setList(List list) {
		this.list = list;
	}

}
