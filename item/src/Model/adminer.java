package Model;

public class adminer {

	private int id;
	private String name;
	private String password;
	
	public adminer() {
		super();
		// TODO Auto-generated constructor stub
	}
	public adminer(String name, String password) {
		super();
		this.name = name;
		this.password = password;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}

	
}
