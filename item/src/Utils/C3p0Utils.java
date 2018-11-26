package Utils;

import java.sql.Connection;
import java.sql.SQLException;

import com.mchange.v2.c3p0.ComboPooledDataSource;

public class C3p0Utils {

	    static ComboPooledDataSource dataSource=new ComboPooledDataSource("mysql");
	    //从连接池中取用一个连接
	    public static Connection getConnection(){
	        Connection conn = null;
	        try {
	            conn = dataSource.getConnection();
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
	        return conn;
	    }

}
