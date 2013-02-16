package damiancyk.spring.other;

import org.springframework.stereotype.Component;

@Component
public class Settings {
	public User user = new User();
	public class User {
		public int id;
		public String login;
		public String firstname;
		public String lastname;
		public String hashEmail;

		public User() {

		}
	}
}
