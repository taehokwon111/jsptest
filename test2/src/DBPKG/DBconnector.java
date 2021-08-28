package DBPKG;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DBconnector {
	public static Connection getConnection() throws Exception{          
		Class.forName("oracle.jdbc.OracleDriver");          
		Connection con = DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1521/xe","system","1234");          
		return con;     
	}
	
	public static ResultSet getRs(String sql) throws Exception
	{
		Connection conn = getConnection();
		PreparedStatement stmt = conn.prepareStatement(sql);
		
		ResultSet rs = stmt.executeQuery();
		return rs;
	}
	
}

