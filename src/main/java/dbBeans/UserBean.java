package dbBeans;
import java.sql.*;

public class UserBean {
	
	//create new user, will throw exception if user can not be created
	public void CreateUser(
			String first_name,
            String last_name,
            String email_address, 
            int phone_number,
            String password) throws Exception {
		DatabaseBean provisio = new DatabaseBean();
		provisio.connectDatabase();
		//check if user email is unique
		ResultSet userExists =  getUser(email_address);
		if(!userExists.wasNull()) {
			throw new Exception("User Email Already Exists");//throw error if user email already exists
		}
		
		//get encrypted password and salt
		String salt = AuthorizationBean.generateSalt();
		String encryptedPassword = AuthorizationBean.generateEncryptedPassword(password, salt);
		
		//insert user data into database
		try{
			provisio.getStmt().executeUpdate("INSERT INTO Users(first_name, last_name, phone_number, encryptedPassword, salt)"+
		  "VALUES('"+ first_name + "', '" + last_name +"', '" + email_address +"', '" + phone_number +"', '" + encryptedPassword +"', '" + salt +"');");
		}
		catch(java.sql.SQLException e){
		      System.out.println("ERROR: " + e + "<br />");
		      throw new SQLException(e);
		}
		finally {
			provisio.closeDatabase();
		}
	}
	
	//get a user resultSet from the database based on email. result set will return null if user is not found
	public ResultSet getUser(String email){
		
		DatabaseBean provisio = new DatabaseBean();
		provisio.connectDatabase();
		ResultSet resultSet = null;
		//get book data
		try{ 
		    resultSet = provisio.getStmt().executeQuery("SELECT * FROM users WHERE email='" + email + "'");
		}
		catch(java.sql.SQLException e){
			System.out.println(e + "<br />");
		}
		finally {
			provisio.closeDatabase();
		}
		return resultSet;
	}
	
}
