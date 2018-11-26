package Servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dao.movieDao;
import Model.movies;
import Model.pageBean;
import Utils.JsonUtil2;
import Utils.dbUtils;
import Utils.responseUtil;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

public class watchServlet extends HttpServlet{
	 dbUtils dbUtil=new dbUtils();
     movieDao movieDao=new movieDao();

	
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		this.doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String page=req.getParameter("page");
		String rows=req.getParameter("limit");
		String moviesName=req.getParameter("moviesName");
		if(moviesName==null) {
			
			moviesName="";
			
		}
		movies movies=new movies();
		movies.setMoviesName(moviesName);
		pageBean pageBean=new pageBean(Integer.parseInt(page),Integer.parseInt(rows));
		
		Connection con=null;
		try { 
			  con=dbUtil.getCon();
			  JSONObject jsonObject=new JSONObject();
			  JSONArray array=new JSONArray();
			  int total=movieDao.manCount(con,movies);
			  ResultSet rs=movieDao.watchList(con, pageBean,movies);
			   array=JsonUtil2.rsToJSONArray(rs); 
			    jsonObject.put("data",array);
			    jsonObject.put("count",total);
			    jsonObject.put("code","0");	
			    responseUtil.resp(resp, jsonObject);
			
			    
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		
		
		
		
	}

	
	
	
	
	
	
}
