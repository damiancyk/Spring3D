package damiancyk.spring.service;

import damiancyk.spring.form.User;

public interface LoginService {
	public User getUser(Integer id);
	
	public boolean isBusyLogin(String login);
}
