package dbBeans;

import java.sql.SQLException;
import java.util.Date;

import Objects.User;

public class ReservationBean {

	public void CreateReservation(
			Date check_in,
			Date check_out,
            String guest_name,
            String location_name, 
            int number_of_guests,
            int loyalty_points,
            int user_id,
            int room_id) throws Exception {
		DatabaseBean provisio = new DatabaseBean();
		provisio.connectDatabase();

		//insert user data into database
		try{
			provisio.getStmt().executeUpdate("INSERT INTO reservation(check_in, check_out, guest_name, location_name, number_of_guests, loyalty_points, user_id, room_id)"+
		  "VALUES('"+ guest_name + "', '" + check_in +"', '" + check_out +"', '" + location_name +"', '" + number_of_guests +"');");
		}
		catch(java.sql.SQLException e){
		      System.out.println("ERROR: " + e);
		      throw new SQLException(e);
		}
		finally {
			provisio.closeDatabase();
		}
	}
}