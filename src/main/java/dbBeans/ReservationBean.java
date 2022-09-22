package dbBeans;

import java.sql.*;
import java.sql.Statement;
import java.util.ArrayList;

import Objects.Reservation;

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
	
	public Reservation getReservationById(String reservationId, String userId) throws Exception {
		DatabaseBean provisio = new DatabaseBean();
		provisio.connectDatabase();
		
		Reservation res = new Reservation();
		
		try{ 
			ResultSet resultSet  = provisio.getStmt().executeQuery("SELECT * FROM reservations WHERE reservation_id='" + reservationId + 
		    											"' AND user_id='" + userId + "'");
		    resultSet.next();
		    
		    res.reservation_id = resultSet.getInt("reservation_id");
		    res.check_in = resultSet.getString("check_in");
		    res.check_out = resultSet.getString("check_out");
		    res.guest_name = resultSet.getString("guest_name");
		    res.location_name = resultSet.getString("location_name");
		    res.number_of_guests = resultSet.getInt("number_of_guests");
		    res.loyalty_points = resultSet.getInt("loyalty_points");
		    res.room_id = resultSet.getInt("room_id");
		    
		    resultSet = provisio.getStmt().executeQuery("SELECT * FROM room WHERE room_id='" + res.room_id + "'");
		    resultSet.next();
		    res.size = resultSet.getString("size");
		    res.cost = resultSet.getFloat("cost");
		    
		    resultSet = provisio.getStmt().executeQuery("SELECT * FROM reservation_amenities WHERE reservation_id='" + reservationId + "'");
		    while(resultSet.next()) {
		    	int ammenity = (resultSet.getInt("amenities_id"));
		    	switch(ammenity) {
		    		case 1: 
		    			res.wifi = true;
		    			break;
		    		case 2: 
		    			res.breakfast = true;
		    			break;
		    		case 3: 
		    			res.parking = true;
		    			break;	
		    	}
		    }
		    return res;
		    
		}
		catch(java.sql.SQLException e){
			System.out.println(e);
			throw new SQLException(e);
		}
		finally {
			provisio.closeDatabase();
		}
	}
	
	public ArrayList<Reservation> getUserLoyaltyPoints(String userId) throws Exception {
		DatabaseBean provisio = new DatabaseBean();
		provisio.connectDatabase();
		
		ArrayList<Reservation> reservations = new ArrayList<Reservation>();
		
		try{ 
			ResultSet resultSet  = provisio.getStmt().executeQuery("SELECT * FROM reservations WHERE user_id='" + userId + "'");
			while(resultSet.next()) {
				reservations.add(new Reservation(
						resultSet.getInt("reservation_id"), 
						resultSet.getString("check_in"),
						resultSet.getString("check_out"),
						resultSet.getString("location_name"),
						resultSet.getInt("loyalty_points")));
			}
		    return reservations;
		    
		}
		catch(java.sql.SQLException e){
			System.out.println(e);
			throw new SQLException(e);
		}
		finally {
			provisio.closeDatabase();
		}
	}
}
