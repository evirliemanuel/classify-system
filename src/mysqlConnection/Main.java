package mysqlConnection;
import java.sql.DriverManager;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.mysql.jdbc.Connection;

public class Main {

	public static void main(String[] args) throws Exception  {

			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/dbtest","root","");
		
			PreparedStatement statement = con.prepareStatement("SELECT * FROM name");
		
			ResultSet result = statement.executeQuery();
	
			while(result.next()) {
				
				System.out.println(result.getString(1) + " " + result.getString(2));
				
	
	
	}
	}

}
