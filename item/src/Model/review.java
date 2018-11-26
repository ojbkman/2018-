package Model;

public class review {
     private int user_id;
     private String moviesName;
     private String movie_review;
     
     public review(int user_id, String moviesName, String movie_review){
    	 
    	 this.user_id = user_id;
    	 this.moviesName = moviesName;
    	 this.movie_review = movie_review;
     }
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	public String getMoviesname() {
		return moviesName;
	}
	public void setMoviesname(String moviesname) {
		this.moviesName = moviesName;
	}
	public String getMovie_review() {
		return movie_review;
	}
	public void setMovie_review(String movie_review) {
		this.movie_review = movie_review;
	}
     
     
}
