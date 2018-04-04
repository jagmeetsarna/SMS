package com.xavient.collage.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.xavient.collage.action.FeedbackAction;
import com.xavient.model.Feedback;
import com.xavient.utill.ConnectionUtil;

public class FeedbackDao {
	public static Feedback insertFeedback(FeedbackAction f){
		int status = 0;
		Feedback feedback = null;
		try {
			Connection connection = ConnectionUtil.getConnection();
			if (null != connection) {
				PreparedStatement ps = connection.prepareStatement(
						"insert into feedback(id,name,subject,feedback) values(?,?,?,?)");
				ps.setInt(1, f.getId());
				ps.setString(2, f.getName());
				ps.setString(3, f.getSubject());
				ps.setString(4, f.getFeedback());
			
				status = ps.executeUpdate();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return feedback;
	}
}
