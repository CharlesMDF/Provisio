package Objects;

public class Reservation {
	public int reservation_id;
	public String check_in;
	public String check_out;
	public String guest_name;
	public String location_name;
	public int number_of_guests;
	public int loyalty_points;
	
	public int room_id;
	public String size;
	public float cost;
	
	public boolean wifi = false;
	public boolean breakfast = false;
	public boolean parking = false;
	
	public Reservation() {}
	
}
