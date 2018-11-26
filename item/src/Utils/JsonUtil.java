package Utils;

import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.util.Date;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

public class JsonUtil {

	public static JSONObject formatRsToJsonArray(ResultSet rs)throws Exception{
		ResultSetMetaData md=rs.getMetaData();
		int num=md.getColumnCount();
		JSONObject mapOfColValues=new JSONObject();
		while(rs.next()){
			
			for(int i=1;i<=num;i++){
				
	             mapOfColValues.put(md.getColumnName(i), rs.getObject(i));					
				
			}
			
		}
		return mapOfColValues;
	}
}
