package Model;

public class movies {
	private int id;
	private String moviesName;
	private String time;
	private String company;
	private String type;
	private String image1;
	private String image2;
	private String introduced;

	public movies(String moviesName, String time, String company, String type, String image1, String image2,
			String introduced) {
		super();
		this.moviesName = moviesName;
		this.time = time;
		this.company = company;
		this.type = type;
		this.image1 = image1;
		this.image2 = image2;
		this.introduced = introduced;
	}

	public movies() {
		super();
		// TODO Auto-generated constructor stub
	}

	public movies(int id) {
		super();
		this.id = id;
	}

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getMoviesName() {
		return moviesName;
	}
	public void setMoviesName(String moviesName) {
		this.moviesName = moviesName;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public String getCompany() {
		return company;
	}
	public void setCompany(String company) {
		this.company = company;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getImage1() {
		return image1;
	}
	public void setImage1(String image1) {
		this.image1 = image1;
	}
	public String getImage2() {
		return image2;
	}
	public void setImage2(String image2) {
		this.image2 = image2;
	}
	public String getIntroduced() {
		return introduced;
	}
	public void setIntroduced(String introduced) {
		this.introduced = introduced;
	}
	
	
}
