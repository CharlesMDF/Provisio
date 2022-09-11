package dbBeans;

import java.sql.*;
import java.sql.Statement;
import java.util.Date;

public class ReservationBean {

	public int CreateReservation(
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
			"VALUES('"+ guest_name + "', '" + check_in +"', '" + check_out +"', '" + location_name +"', '" + number_of_guests +"');", 
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
