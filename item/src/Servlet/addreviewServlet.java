package Servlet;

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dao.reviewDao;
import Model.review;
import Utils.C3p0Utils;

/**
 * Servlet implementation class addreviewServlet
 */

public class addreviewServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addreviewServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		reviewDao reviewDao= new reviewDao();
		doGet(request, response);
		int user_id=Integer.parseInt(request.getParameter("user_id"));
		String moviesName=request.getParameter("moviesName");
		String movie_review=request.getParameter("movie_review");
		review review=new review(user_id, moviesName, movie_review);
		Connection con=null;
		try {
			con=C3p0Utils.getConnection();
			@SuppressWarnings("unused")
			int result=reviewDao.insert(con,review);
			
		} catch (Exception e) {
			// TODO: handle exception
		}
	}

}
