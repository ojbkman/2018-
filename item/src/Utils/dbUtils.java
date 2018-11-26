package Utils;

import java.sql.Connection;
import java.sql.DriverManager;

public class dbUtils {
	private String dbUrl="jdbc:mysql://localhost:3306/item?useSSL=true&&characterEncoding=utf8";
	private String dbUserName="root";
	private String dbPassword="abab123";
	private String jdbcName="com.mysql.jdbc.Driver";
	
	/**
	 * 获取数据库连接
	 * @return
	 * @throws Exception
	 */
	public Connection getCon() throws Exception{
		Class.forName(jdbcName);
		Connection con=DriverManager.getConnection(dbUrl,dbUserName,dbPassword);
		return con;
	}
	
	/**
	 * 关闭数据库连接
	 * @param con
	 * @throws Exception
	 */
	public void closeCon(Connection con) throws Exception{
		if(con!=null){
			con.close();
		}
	}
	
	public static void main(String[] args) {
		dbUtils dbUtil=new dbUtils();
		try {
			Connection con=dbUtil.getCon();
			System.out.println(con);
			dbUtil.closeCon(con);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
