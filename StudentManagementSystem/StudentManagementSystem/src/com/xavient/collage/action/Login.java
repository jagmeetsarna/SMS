package com.xavient.collage.action;

import java.util.Map;

import org.apache.commons.lang3.StringUtils;
import org.apache.struts2.dispatcher.SessionMap;
import org.apache.struts2.interceptor.SessionAware;

import com.my.datacon.User;
import com.opensymphony.xwork2.ActionSupport;
import com.xavient.collage.DAO.LoginDao;
import com.xavient.model.LoginBean;

public class Login  extends ActionSupport implements SessionAware {
	private LoginBean loginBean;
	Map m;

	private User user;

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public LoginBean getLoginBean() {
		return loginBean;
	}

	public void setLoginBean(LoginBean loginBean) {
		this.loginBean = loginBean;
	}

	public String execute() {

		user = LoginDao.loginDetail(loginBean.getUsername(), loginBean.getPassword());
		if (null != user) {

			String result = user.getUserRole();
			if (result.equals("user")) {
				m.put("name",user.getName());
				m.put("id",user.getId());
				m.put("email",user.getEmail());
			
				return "user";
			}
			m.put("name",user.getName());
			m.put("id",user.getId());
			m.put("email",user.getEmail());
			return "admin";
		} 
		else{
			addActionError("Please enter Correct Information");
			return INPUT;
		}
		

	}

	public void validate() {
		if (StringUtils.isEmpty(loginBean.getUsername())) {
			addFieldError("loginBean.username", "This field cannot be empty");
		}
	
		if (StringUtils.isEmpty(loginBean.getPassword())) {

			addFieldError("loginBean.password", "This field cannot be empty");

		}
	}

	@Override
	public void setSession(Map m) {
	
		this.m=m;
		
	}

}
