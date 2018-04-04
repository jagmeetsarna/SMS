package com.xavient.collage.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.my.datacon.User;
import com.xavient.model.Feedback;
import com.xavient.utill.ConnectionUtil;

public class LoginDao {

	public static User loginDetail(String userId, String password) {
		User user = null;
		java.sql.Statement statement = null;
		try {
			Connection connection = ConnectionUtil.getConnection();
			if (null != connection) {
				String sql = "SELECT * FROM studentdetails WHERE email ='" + userId + "' and password='" + password
						+ "'";
				statement = connection.createStatement();

				ResultSet rs = statement.executeQuery(sql);

				while (rs.next()) {
					user = new User();
					user.setId(rs.getInt(1));
					user.setUserRole(rs.getString(6));
					user.setName(rs.getString(2));
					user.setEmail(rs.getString(4));
					user.setAddress(rs.getString(5));
					user.setCourse(rs.getString(10));
				}

			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return user;
	}

	public static User userDetail(String userId) {
		User user = null;
		java.sql.Statement statement = null;
		try {
			Connection connection = ConnectionUtil.getConnection();
			if (null != connection) {
				String sql = "SELECT * FROM studentdetails INNER JOIN  courses ON studentdetails.c_id=courses.c_id WHERE studentdetails.email ='"
						+ userId + "'";
				statement = connection.createStatement();

				ResultSet rs = statement.executeQuery(sql);
				user = new User();
				while (rs.next()) {
					user.setId(rs.getInt(1));
					user.setName(rs.getString(2));
					user.setEmail(rs.getString(4));
					user.setAddress(rs.getString(5));
					user.setUserRole(rs.getString(6));
					user.setCity(rs.getString(7));
					user.setState(rs.getString(8));
					user.setZipcode(rs.getString(9));
					user.setCourse(rs.getString(12));

				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return user;
	}

}
