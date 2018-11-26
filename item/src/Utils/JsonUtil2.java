package Utils;

import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;


public class JsonUtil2 {

	public static JSONArray rsToJSONArray(ResultSet rs) throws SQLException {
		
		ResultSetMetaData metedata=rs.getMetaData();
		int num=metedata.getColumnCount();
		JSONArray Array=new JSONArray();
		while(rs.next()){
			 JSONObject object=new JSONObject();
			for(int i=1;i<=num;i++) {
				object.put(metedata.getColumnName(i),rs.getObject(i));
		
			}
			
			Array.add(object);
			
			
		}
		
		return Array;
		
		
		
	}
	
	
	
	
}
