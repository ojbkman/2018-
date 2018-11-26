package Servlet;

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dao.movieDao;
import Utils.dbUtils;
import Utils.responseUtil;
import net.sf.json.JSONObject;
public class deleteServlet extends HttpServlet{
	 dbUtils dbUtil=new dbUtils();
     movieDao movieDao=new movieDao();

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
		  String ids=req.getParameter("ids");
			Connection con=null;
			try {
				  con=dbUtil.getCon();
				  int delNums=movieDao.delete(con, ids);
				  JSONObject result=new JSONObject();
				  if(delNums>0) {
				result.put("success", "true");
				result.put("delNums", delNums);
			     }else {
			    	 
			    	 result.put("errorMsg", "É¾³ýÊ§°Ü");
			    	 
			     }
				  responseUtil.resp(resp,result);
			} catch (Exception e) {
				// TODO: handle exception
			}
		
	}

	
	
	
	
	
}
