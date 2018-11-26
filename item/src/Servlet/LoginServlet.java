package Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Dao.userDao;
import Model.adminer;
import Utils.StringUtil;
import Utils.dbUtils;
import net.sf.json.JSONObject;


public class LoginServlet extends HttpServlet{
   dbUtils dbUtils=new dbUtils();
   userDao userDao=new userDao();
	
	
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
		
		String name=req.getParameter("username");
		String password=req.getParameter("password");
		if(StringUtil.isEmpty(name)||StringUtil.isEmpty(password)) {
		
		  return;
		}
		adminer user=new adminer(name,password);
	      Connection con=null;
	      try { con=dbUtils.getCon();
	    	  adminer Currentuser=userDao.Login(con, user);
	           if(Currentuser==null) {
	        	  
	        	   return;
	        
	        	   }else {
	        		  
	        		   req.getRequestDispatcher("admin.jsp").forward(req, resp);
	        	   }
	          
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		
		
	}

	
	
	
	
	
}
