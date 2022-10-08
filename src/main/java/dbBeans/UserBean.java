package dbBeans;
import java.sql.*;
import Objects.*;

public class UserBean {
	
	//create new user, will throw exception if user can not be created
	public int CreateUser(
			String first_name,
            String last_name,
            String email_address, 
            int phone_number,
            String password) throws Exception {
		DatabaseBean provisio = new DatabaseBean();
		provisio.connectDatabase();
		//check if user email is unique
		User userExists =  getUser(email_address);
		if(userExists.email_address != null) {
			throw new Exception("User Email Already Exists");//throw error if user email already exists
		}
		
		AuthorizationBean auth = new AuthorizationBean();
		//get encrypted password and salt
		String salt = auth.generateSalt();
		String encryptedPassword = auth.generateEncryptedPassword(password, salt);
		
		//insert user data into database
		try{
			provisio.getStmt().executeUpdate("INSERT INTO Users(first_name, last_name, email_address, phone_number, password, password_salt)"+
		  "VALUES('"+ first_name + "', '" + last_name +"', '" + email_address +"', '" + phone_number +"', '" + encryptedPassword +"', '" + salt +"');", Statement.RETURN_GENERATED_KEYS);
			ResultSet resultSet = provisio.getStmt().getGeneratedKeys();
			resultSet.next();
			return resultSet.getInt(1);
		}
		catch(java.sql.SQLException e){
		      System.out.println("ERROR: " + e);
		      throw new SQLException(e);
		}
		finally {
			provisio.closeDatabase();
		}
	}
	
	//get a user resultSet from the database based on email. result set will return null if user is not found
	public User getUser(String email){
		
		DatabaseBean provisio = new DatabaseBean();
		provisio.connectDatabase();
		ResultSet resultSet = null;
		User user = new User();
		//get book data
		try{ 
		    resultSet = provisio.getStmt().executeQuery("SELECT * FROM users WHERE email_address='" + email + "'");
		    resultSet.next();
		    user.id = resultSet.getInt("user_id");
		    user.first_name = resultSet.getString("first_name");
		    user.last_name = resultSet.getString("last_name");
		    user.email_address = resultSet.getString("email_address");
		    user.phone_number = resultSet.getInt("phone_number");
		    user.password = resultSet.getString("password");
		    user.password_salt = resultSet.getString("password_salt");
		    return user;
		}
		catch(java.sql.SQLException e){
			System.out.println(e);
		}
		finally {
			provisio.closeDatabase();
		}
		return user;
	}
	
}
