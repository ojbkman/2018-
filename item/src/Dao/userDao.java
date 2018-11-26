package Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;


import Model.adminer;

public class userDao {

public adminer Login(Connection con,adminer user) throws Exception {
	String sql="select * from admin where name=? && password=?";
	PreparedStatement str=con.prepareStatement(sql);
	str.setString(1, user.getName());
	str.setString(2, user.getPassword());
	ResultSet rs=str.executeQuery();
	adminer CurrentUser=null;
	if(rs.next()) {
		CurrentUser=new adminer();
		CurrentUser.setName(rs.getString("name"));
		CurrentUser.setPassword(rs.getString("password"));
		
		
	}
	
	 return CurrentUser;
}
	
	
}
