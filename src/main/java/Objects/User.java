package Objects;

public class User {
	public int id;
	public String first_name;
	public String last_name;
	public String email_address;
	public int phone_number;
	public String password;
	public String password_salt;
	
	public User(
		int id,
		String first_name,
		String last_name,
		String email_address,
		int phone_number,
		String password,
		String password_salt) {
		this.id = id;
		this.first_name = first_name;
		this.last_name = last_name;
		this.email_address = email_address;
		this.phone_number = phone_number;
		this.password = password;
		this.password_salt = password_salt;
	}
	public User() {}
}
