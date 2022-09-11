package dbBeans;

import java.sql.*;
import java.sql.Statement;

public class ReservationBean {

	public int CreateReservation(
			String check_in,
			String check_out,
            String guest_name,
            String location_name, 
            String number_of_guests,
            String loyalty_points,
            String user_id,
            String room_id) throws Exception {
		DatabaseBean provisio = new DatabaseBean();
		provisio.connectDatabase();

		//insert user data into database
		try{
			provisio.getStmt().executeUpdate("INSERT INTO reservations(check_in, check_out, guest_name, location_name, "
					+ "number_of_guests, loyalty_points, user_id, room_id)"+
			"VALUES('"+ check_in + "', '" + check_out +"', '" + guest_name +"', '" + location_name +"', '" 
					+ number_of_guests +"','" + loyalty_points + "','" + user_id + "','" + room_id + "');", 
			Statement.RETURN_GENERATED_KEYS);
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
	
	public void LinkAmenitiesReservation(int ammenities_id, int reservation_id) throws Exception {
		DatabaseBean provisio = new DatabaseBean();
		provisio.connectDatabase();

		//insert user data into database
		try{
			provisio.getStmt().executeUpdate("INSERT INTO reservation_amenities(reservation_id,amenities_id)"+
					"VALUES('"+ reservation_id + "', '" + ammenities_id +"');");
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
