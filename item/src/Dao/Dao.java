package Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import Model.movies;

public class Dao {

	public ResultSet gradeList(Connection con,movies movies)throws Exception{
		StringBuffer sb=new StringBuffer("select * from movies where id=?");
		PreparedStatement str=con.prepareStatement(sb.toString());
		str.setInt(1,movies.getId());
		return str.executeQuery();
	}
	
	
}
