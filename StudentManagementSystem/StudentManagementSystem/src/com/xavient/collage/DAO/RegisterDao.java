package com.xavient.collage.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.my.datacon.User;
import com.xavient.collage.action.RegisterAction;
import com.xavient.collage.action.UpdateAction;
import com.xavient.utill.ConnectionUtil;

public class RegisterDao {
	public static List getUserByEmailID(String emailID) {
		List userList = null;
		try {
			Connection connection = ConnectionUtil.getConnection();
			if (null != connection) {
				String sql = "SELECT * FROM studentdetails WHERE email = ?";
				PreparedStatement pst = connection.prepareStatement(sql);
				pst.setString(1, emailID);
				ResultSet rs = pst.executeQuery();
				userList = new ArrayList<>();
				while (rs.next()) {
					userList.add(rs.getString(1));
					userList.add(rs.getString(2));
					userList.add(rs.getString(3));

				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return userList;
	}

	public static int save(RegisterAction r) {
		int status = 0;
		try {
			Connection connection = ConnectionUtil.getConnection();
			if (null != connection) {
				PreparedStatement ps = connection.prepareStatement(
						"insert into studentdetails(name,password,email,address,type,city,state,zipcode,c_id) values(?,?,?,?,?,?,?,?,?)");
				ps.setString(1, r.getName());
				ps.setString(2, r.getPassword());
				ps.setString(3, r.getEmail());
				ps.setString(4, r.getAddress());
				ps.setString(5, r.getType());
				ps.setString(6, r.getCity());
				ps.setString(7, r.getState());
				ps.setString(8, r.getZipcode());
				ps.setInt(9, r.getCourse());

				status = ps.executeUpdate();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return status;
	}

	public static boolean delete(int userId) {
		boolean result = false;
		try {
			Connection connection = ConnectionUtil.getConnection();
			if (null != connection) {
				String sql = "DELETE FROM studentdetails WHERE ID = ?";
				PreparedStatement pst = connection.prepareStatement(sql);
				pst.setInt(1, userId);
				result = pst.execute();

			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;

	}

	public static User generate(int userId) {
		User user = null;
		java.sql.Statement statement = null;
		try {
			Connection connection = ConnectionUtil.getConnection();
			if (null != connection) {
				String sql = "SELECT * FROM studentdetails WHERE ID ='" + userId + "'";
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
					user.setCourse(rs.getString(10));

				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return user;

	}

	public static int update(UpdateAction r,String email) {
		int status = 0;
		try {
			Connection connection = ConnectionUtil.getConnection();
			if (null != connection) {
				PreparedStatement pstmt =null;
				String query = "update studentdetails set name = ? ,email = ?,address = ?,type = ?,city = ?,state = ?,zipcode = ?,c_id=? where email = ? ";
				/**/
				pstmt = connection.prepareStatement(query);
				pstmt.setString(1, r.getName());
				pstmt.setString(2, r.getEmail());
				pstmt.setString(3, r.getAddress());
				pstmt.setString(4, r.getType());
				pstmt.setString(5, r.getCity());
				pstmt.setString(6, r.getState());
				pstmt.setString(7, r.getZipcode());
				pstmt.setString(8, r.getCourse());
				pstmt.setString(9, email);


				status = pstmt.executeUpdate();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return status;
	}
	public static List searchStudent(String name) {
		
		List list = null;
		try {
			Connection con=ConnectionUtil.getConnection();
			PreparedStatement ps = con.prepareStatement("select * from studentdetails WHERE name  LIKE '%'"+name+"%' and type='user' order by id ;");
			ResultSet rs = ps.executeQuery();

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

		return list;
	}



}