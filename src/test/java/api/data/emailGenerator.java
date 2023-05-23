package api.data;

public class emailGenerator {

	public static String getEmail() {
		String email = "Bahara";
		String provider= "@gmail.com";
		int randomNum = (int)(Math.random()*1000);
		String autoEmail = email +randomNum + provider;
		return autoEmail; 
	}
	public static void main(String [] args) {
		System.out.println(getEmail());
	}
	
}
