package dbBeans;

public class DatabaseBean {
	private java.sql.Connection con = null;
	private java.sql.Statement stmt = null;
	public void connectDatabase() {
		
		//connect to database
		try{
		    Class.forName("com.mysql.cj.jdbc.Driver");
		    String url = "jdbc:mysql://localhost:3306/provisio?";
		    con = java.sql.DriverManager.getConnection(url + "user=provisio&password=provisio");                
		    stmt = con.createStatement();
		}
		catch(Exception e){
		    System.out.println("Error connection to database.");
		    System.out.println(e);
		}
	}
	
	public java.sql.Statement getStmt(){
		return stmt;
	}
	
	public void closeDatabase() {
		try{
            stmt.close();
            con.close();
        }
        catch(java.sql.SQLException e){
            System.out.println("<b>Connection close failed</b><br />");
        }
	}
}