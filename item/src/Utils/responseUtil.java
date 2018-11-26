package Utils;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;


import net.sf.json.JSONObject;

public class responseUtil {

	public static void resp(HttpServletResponse resp,JSONObject o)throws Exception{
		
		   resp.setCharacterEncoding("UTF-8");  
		    resp.setContentType("application/json; charset=utf-8");  
		    PrintWriter out = null;  
		    try {  
		        out = resp.getWriter();  
		        out.print(o.toString());
		    } catch (IOException e) {  
		        e.printStackTrace();  
		    } finally {  
		        if (out != null) {  
		        	out.flush();
		            out.close();  
		        }  
		    }  
		
		
		
		
		
		
	}
	
	
	
}
