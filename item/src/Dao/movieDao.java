package Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.naming.spi.DirStateFactory.Result;



import Model.pageBean;
import Utils.StringUtil;
import Model.movies;



public class movieDao {

	public ResultSet watchList(Connection con,pageBean pagebean,movies movie)throws Exception{
		StringBuffer sql=new StringBuffer("select * from movies ");
        if(StringUtil.isNotEmpty(movie.getMoviesName())) {
			
        	
				sql.append(" and moviesName like '%"+movie.getMoviesName()+"%'");
		
			
		}
		
		
		
		if(pagebean!=null) {
			
			sql.append(" limit "+pagebean.getStart()+","+pagebean.getRows());
			
		}
		PreparedStatement str=con.prepareStatement(sql.toString().replaceFirst("and", "where"));
		return str.executeQuery();
	
	}
	public int manCount(Connection con,movies movie)throws Exception{
		StringBuffer sql=new StringBuffer("select count(*) as total from movies ");	
	      if(StringUtil.isNotEmpty(movie.getMoviesName())) {
				
	        	
					sql.append(" and moviesName like '%"+movie.getMoviesName()+"%'");
			
				
			}
		PreparedStatement str=con.prepareStatement(sql.toString().replaceFirst("and", "where"));
		ResultSet rs=str.executeQuery();
		if(rs.next()) {
			int total=rs.getInt("total");
			return total;
		}else {
			
			
			return 0;
		}
		
}
	
	public int delete(Connection con,String ids)throws Exception{
		String sql="delete from movies where id in ("+ids+")";
		PreparedStatement str=con.prepareStatement(sql);
		return str.executeUpdate();
		
		
	}

	public int insert(Connection con,movies movie)throws Exception{
		String sql="insert into movies values(null,?,?,?,?,?,?,?)";
		PreparedStatement pstmt=con.prepareStatement(sql);
		pstmt.setString(1, movie.getMoviesName());
		pstmt.setString(2, movie.getTime());
		pstmt.setString(3, movie.getCompany());
		pstmt.setString(4, movie.getType());
		pstmt.setString(5, movie.getImage1());
		pstmt.setString(6, movie.getImage2());
		pstmt.setString(7, movie.getIntroduced());
		return pstmt.executeUpdate();
	}
	
	public int update(Connection con,movies movie)throws Exception{
		String sql="update movies set moviesName=?,time=?,company=?,type=?,image1=?,image2=?,introduced=? where id=?";
		PreparedStatement pstmt=con.prepareStatement(sql);
		pstmt.setString(1, movie.getMoviesName());
		pstmt.setString(2, movie.getTime());
		pstmt.setString(3, movie.getCompany());
		pstmt.setString(4, movie.getType());
		pstmt.setString(5, movie.getImage1());
		pstmt.setString(6, movie.getImage2());
		pstmt.setString(7, movie.getIntroduced());
		return pstmt.executeUpdate();
	}
	
	
	
	
}