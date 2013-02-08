package damiancyk.spring.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import damiancyk.spring.dao.LoginDAO;
import damiancyk.spring.form.User;

@Service
public class LoginServiceImpl implements LoginService {
	@Autowired
	private LoginDAO loginDAO;

	@Transactional
	public User getUser(Integer id) {
		return loginDAO.getUser(id);
	}
}
