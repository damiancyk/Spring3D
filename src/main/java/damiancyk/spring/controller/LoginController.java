package damiancyk.spring.controller;

import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import damiancyk.spring.form.User;
import damiancyk.spring.other.Settings;
import damiancyk.spring.service.LoginService;

@Controller
@RequestMapping(value={"/","/m/", ""})
public class LoginController {
	@Autowired
	private LoginService loginService;

	@Autowired
	Settings settings;

	@RequestMapping(value = { "/welcome", "/", "index", "start" }, method = RequestMethod.GET)
	public String welcomeSite(ModelMap model, Principal principal) {
		settings.user.login = "loginn";
		return "login/welcome";
	}

	@RequestMapping("/another")
	public ModelAndView note(ModelAndView mav) {
		mav.setViewName("another");
		User user = loginService.getUser(2);
		mav.addObject("user", user);
		return mav;
	}
	
	@RequestMapping("/webGL")
	public String webGL() {
		return "webGL";
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
