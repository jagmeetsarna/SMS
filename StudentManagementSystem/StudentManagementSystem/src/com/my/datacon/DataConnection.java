package com.my.datacon;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;
import com.xavient.model.Feedback;
import com.xavient.utill.ConnectionUtil;

public class DataConnection extends ActionSupport {
	static ArrayList<User> list = new ArrayList<User>();

	public ArrayList<User> getList() {
		return list;
	}

	public void setList(ArrayList<User> list) {
		this.list = list;
	}

	public String execute() {
		try {
			Connection con = ConnectionUtil.getConnection();
			PreparedStatement ps = con.prepareStatement("select * from studentdetails WHERE type='user' order by id ;");
			ResultSet rs = ps.executeQuery();
list.clear();
			while (rs.next()) {

				User user = new User();
				user.setId(rs.getInt(1));
				user.setName(rs.getString(2));
				user.setPassword(rs.getString(3));
				user.setEmail(rs.getString(4));
				user.setAddress(rs.getString(5));
				user.setUserRole(rs.getString(6));
				user.setCity(rs.getString(7));
				list.add(user);
			}

			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}

		return SUCCESS;
	}

	public static List searchStudent(String name) {
		List searchList=null;
		try {
			Connection con = ConnectionUtil.getConnection();
			String query="select * from studentdetails WHERE name  LIKE '"+name +"%' and type='user' order by id ";
			PreparedStatement ps = con.prepareStatement(query);
			ResultSet rs = ps.executeQuery();
			searchList=new ArrayList();
			while (rs.next()) {
				User user = new User();
				user.setId(rs.getInt(1));
				user.setName(rs.getString(2));
				user.setPassword(rs.getString(3));
				user.setEmail(rs.getString(4));
				user.setAddress(rs.getString(5));
				user.setUserRole(rs.getString(6));
				user.setCity(rs.getString(7));
				searchList.add(user);
			}

			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}

		return searchList;
	}
	
	public static List feedbackStudent(int id) {
		List searchList=null;
		try {
			Connection con = ConnectionUtil.getConnection();
			String query="select * from feedback order by id ";
			PreparedStatement ps = con.prepareStatement(query);
			ResultSet rs = ps.executeQuery();
			searchList=new ArrayList();
			while (rs.next()) {
				Feedback feedback = new Feedback();
				feedback.setQid(rs.getInt(1));
				feedback.setId(rs.getInt(2));
				feedback.setName(rs.getString(3));
				feedback.setSubject(rs.getString(4));
				feedback.setFeedback(rs.getString(5));
			
				
				searchList.add(feedback);
			}

			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}

		return searchList;
	}
}