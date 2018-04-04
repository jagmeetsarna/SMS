package com.xavient.collage.action;

import java.util.ArrayList;
import java.util.List;

import com.my.datacon.DataConnection;
import com.opensymphony.xwork2.ActionSupport;
import com.xavient.collage.DAO.FeedbackDao;
import com.xavient.model.Feedback;

public class FeedbackAction extends ActionSupport {
	private String feedback;
	private int id;
	private int qid;
	private String subject;
	private String name;
	private List courseList = new ArrayList();
	private List list = new ArrayList();

	
	
	public int getQid() {
		return qid;
	}

	public void setQid(int qid) {
		this.qid = qid;
	}

	public List getList() {
		return list;
	}

	public void setList(List list) {
		this.list = list;
	}
	
	public String getFeedback() {
		return feedback;
	}

	public void setFeedback(String feedback) {
		this.feedback = feedback;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String Feedback() {
		Feedback feedback = new Feedback();
		feedback = FeedbackDao.insertFeedback(this);

		return SUCCESS;
	}
	public String feedBackStudent() {

		list = DataConnection.feedbackStudent(getId());
		return SUCCESS;

	}
}
