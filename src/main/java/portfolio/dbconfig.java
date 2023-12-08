package portfolio;

import java.sql.Connection;
import java.sql.DriverManager;

public class dbconfig {
	
	public static Connection info() throws Exception{
		
		String db_driver = "com.mysql.jdbc.Driver";
//		String db_url = "jdbc:mysql://localhost/whdwns268";
		String db_url="jdbc:mysql://umj7-020.cafe24.com/whdwns268";
		String db_user = "whdwns268";
		String db_pass = "jongjun36!";
		
		Class.forName(db_driver);
		
		Connection con = DriverManager.getConnection(db_url,db_user,db_pass);
		//System.out.println(con);
		return con;
	}
	
}
