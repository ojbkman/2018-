package Servlet;

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dao.movieDao;
import Model.movies;
import Utils.dbUtils;
import Utils.responseUtil;
import net.sf.json.JSONObject;

public class saveServlet extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	 dbUtils dbUtil=new dbUtils();
     movieDao movieDao=new movieDao();
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		this.doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		 String moviesName=req.getParameter("moviesName");
		 String time=req.getParameter("time");
		 String company=req.getParameter("company");
		 String type=req.getParameter("type");
		 String image1=req.getParameter("image1");
		 String image2=req.getParameter("image2");
		 String introduced=req.getParameter("introduced");
		 movies movie=new movies(moviesName, time, company, type, image1, image2, introduced);
			Connection con=null;
			try {
				  con=dbUtil.getCon();
		         int result=movieDao.insert(con, movie);
				  JSONObject job=new JSONObject();
				  if(result>0) {
				job.put("success", "true");
				job.put("result", result);
			     }else {
			    	 
			    	 job.put("errorMsg", "≤Â»Î ß∞‹");
			    	 
			     }
				  responseUtil.resp(resp,job);
			} catch (Exception e) {
				// TODO: handle exception
			}
		
		
		
		
		
		
	}

	
	
	
}
