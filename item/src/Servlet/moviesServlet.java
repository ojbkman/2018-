package Servlet;

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.ServletException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Dao.Dao;
import Model.movies;
import Utils.JsonUtil;
import Utils.dbUtils;
import net.sf.json.JSONObject;

public class moviesServlet extends HttpServlet{
	 dbUtils dbutil=new dbUtils();
	   Dao dao=new Dao();
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		this.doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String id=req.getParameter("id");
		
		movies movie=new movies(Integer.parseInt(id));
		Connection con=null;
		JSONObject obj=new JSONObject();
		try { 
			 con=dbutil.getCon();
			 obj=JsonUtil.formatRsToJsonArray(dao.gradeList(con, movie));
			 
			  HttpSession session=req.getSession();
			  session.setAttribute("message", obj);
		        System.out.println(obj);   
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		
	}

	
	
	
	
	
	
}
