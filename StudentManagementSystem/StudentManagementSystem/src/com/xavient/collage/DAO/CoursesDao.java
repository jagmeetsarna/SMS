package com.xavient.collage.DAO;

import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.my.datacon.User;
import com.xavient.model.Courses;
import com.xavient.utill.ConnectionUtil;

public class CoursesDao {
	 static ArrayList<Courses> list = new ArrayList<Courses>();
	

	public ArrayList<Courses> getList() {
		return list;
	}


	public void setList(ArrayList<Courses> list) {
		this.list = list;
	}

	public static Courses details(String userId) {
		Courses course = new Courses();
		return course;
	}
	public static List Details(String userId) {
		Courses course = null;
		java.sql.Statement statement = null;
		try {
			Connection connection = ConnectionUtil.getConnection();
			if (null != connection) {
				String sql = "Select subjects.s_name,subjects.s_id,courses.course FROM studentdetails "
						+ " INNER JOIN courses"
						+ " ON studentdetails.c_id=courses.c_id "
						+ " INNER JOIN subjects "
						+ " ON subjects.c_id=courses.c_id"
						+ " WHERE studentdetails.email ='" + userId + "'";
				statement = connection.createStatement();

				ResultSet rs = statement.executeQuery(sql);
				list.clear();
				while (rs.next()) {
					
					course = new Courses();
					course.setSubjectName(rs.getString(1));
					course.setSubjectId(rs.getString(2));
					course.setCourseName(rs.getString(3));
					list.add(course);
				}

			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
}
