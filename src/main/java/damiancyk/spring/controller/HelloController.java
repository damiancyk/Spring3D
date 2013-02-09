package damiancyk.spring.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import damiancyk.spring.form.User;
import damiancyk.spring.service.LoginService;

@Controller
public class HelloController {
	@Autowired
	private LoginService loginService;

	@RequestMapping("/")
	public String hello(ModelAndView mav) {
		return "index";
	}

	@RequestMapping("/another")
	public ModelAndView note(ModelAndView mav) {
		mav.setViewName("another");
		User user = loginService.getUser(0);
		mav.addObject("username", user);

		return mav;
	}

	@RequestMapping("/login")
	public String login() {
		return "login/login";
	}

	@RequestMapping("/register")
	public ModelAndView register(ModelAndView mav) {
		mav.setViewName("login/register");
		mav.addObject("user", new User());
		return mav;
	}
}
