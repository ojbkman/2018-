package Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import Model.review;

public class reviewDao {
         public int insert(Connection con,review review)throws Exception {
        	 String sql="insert into reviews values(?,?,?)";
        	 PreparedStatement pst=con.prepareStatement(sql);
        	 pst.setInt(1, review.getUser_id());
        	 pst.setString(2,review.getMovie_review());
        	 pst.setString(3, review.getMovie_review());
			return pst.executeUpdate();
			
		}
}
