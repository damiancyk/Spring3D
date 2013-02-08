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

	@RequestMapping("")
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
}
