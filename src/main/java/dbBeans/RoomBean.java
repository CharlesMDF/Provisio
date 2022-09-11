package dbBeans;
import java.sql.*;
import java.util.ArrayList;
import Objects.Room;


public class RoomBean {
	public ArrayList<Room> getRooms() {
		DatabaseBean provisio = new DatabaseBean();
		provisio.connectDatabase();
		
		ResultSet resultSet = null;
		ArrayList<Room> rooms = new ArrayList<Room>();
		
		try{
			resultSet = provisio.getStmt().executeQuery("SELECT * FROM room");
			while(resultSet.next()) {
				rooms.add(new Room(resultSet.getInt("room_id"), resultSet.getString("size"), resultSet.getInt("cost")));
			}
		}
		catch(java.sql.SQLException e){
			System.out.println(e);
		}
		finally {
			provisio.closeDatabase();
		}
		return rooms;
	}
	
	public Room getRoomById(String id) {
		DatabaseBean provisio = new DatabaseBean();
		provisio.connectDatabase();
		
		ResultSet resultSet = null;
		
		Room result = null;
		
		try{
			resultSet = provisio.getStmt().executeQuery("SELECT * FROM room WHERE room_id='" + id + "'");
			resultSet.next(); 
			result =  new Room(resultSet.getInt("room_id"), resultSet.getString("size"), resultSet.getInt("cost"));
		}
		catch(java.sql.SQLException e){
			System.out.println(e);
		}
		finally {
			provisio.closeDatabase();
		}
		
		return result;
	}
}
