import java.security.SecureRandom;
public class rand {
	public static void main(String[] args) {
		login l = new login();
		SecureRandom random = new SecureRandom();
		int num = random.nextInt(100000);
		String formatted = String.format("%05d", num); 
		System.out.println("PSCRP"+formatted);
		l.setRand(formatted);
	}
}
