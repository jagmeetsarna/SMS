package com.xavient.collage.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.xavient.collage.action.AttendanceAction;
import com.xavient.model.Attendance;
import com.xavient.utill.ConnectionUtil;

public class AttendanceDao {
	private static java.sql.Date getCurrentDate() {
	    java.util.Date today = new java.util.Date();
	    return new java.sql.Date(today.getTime());
	}
	
	public static Attendance saveAndView(AttendanceAction attendanceAction) {
		int status = 0;
		Attendance attendance = null;
		
		try {
			
			Connection connection = ConnectionUtil.getConnection();
			if (null != connection) {
				PreparedStatement ps = connection.prepareStatement(
						"insert into attendance(name,id,Present,cdate) values(?,?,?,?)");
				ps.setString(1, attendanceAction.getName());
				ps.setInt(2, attendanceAction.getId());
				ps.setInt(3, attendanceAction.getAttendance());
				ps.setDate(4, getCurrentDate());
				status = ps.executeUpdate();
				
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return attendance;
	}

	public static Attendance viewAttendance(int userId) {
		Attendance attendance = null;
		java.sql.Statement statement = null;
		try {
			Connection connection = ConnectionUtil.getConnection();
			if (null != connection) {
				String sql ="Select sum(PRESENT)/sum(DAYS) * 100 as Value,COUNT(days),SUM(Present),MAX(CDATE) "
						+ "From attendance"
						+ " WHERE ID='" + userId + "'order by ATTENDID DESC LIMIT 1" ;
			
				statement = connection.createStatement();

				ResultSet rs = statement.executeQuery(sql);
				attendance = new Attendance();
				while (rs.next()) {

					attendance.setValue(rs.getString(1));
					attendance.setDays(rs.getString(2));
					attendance.setPresent(rs.getString(3));
					attendance.setLastDate(rs.getString(4));
					

				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return attendance;

	}

}
