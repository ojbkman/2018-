package Model;

public class User {
	private int user_id;
	private String user_name;
	private String user_pad;
	private int phone;

	public  User(String user_name, String user_pad) {
		this.user_name= user_name;
		this.user_pad = user_pad;
	}
	public int getUser_id() {
		return user_id;
	}

	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}

	public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	public String getPassword() {
		return user_pad;
	}

	public void setPassword(String password) {
		this.user_pad = password;
	}

	public int getPhone() {
		return phone;
	}

	public void setPhone(int phone) {
		this.phone = phone;
	}
}
