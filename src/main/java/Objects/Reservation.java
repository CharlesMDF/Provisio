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
	
//	public Reservation( int reservation_id,
//	 String check_in,
//	 String check_out,
//	 String guest_name,
//	 String location_name,
//	 int number_of_guests,
//	 int loyalty_points,
//	 String size,
//	 float cost) {
//		
//		this.reservation_id = reservation_id;
//		this.check_in = check_in;
//		this.check_out = check_out;
//		this.guest_name = guest_name;
//		this.location_name = location_name;
//		this.number_of_guests = number_of_guests;
//		this.loyalty_points = loyalty_points;
//		this.size = size;
//		this.cost = cost;
//	}
	
}
