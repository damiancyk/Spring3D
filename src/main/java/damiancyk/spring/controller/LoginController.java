package damiancyk.spring.controller;

import java.security.Principal;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import damiancyk.spring.form.User;
import damiancyk.spring.other.Settings;
import damiancyk.spring.service.LoginService;

@Controller
@RequestMapping(value = { "/", "/m/", "" })
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

	@RequestMapping(value = "/register/busyLogin", method = RequestMethod.GET)
	public @ResponseBody
	Boolean isBusyLogin(@RequestParam("login") String login) {
		if (loginService.isBusyLogin(login))
			return true;
		else
			return false;
		// if (login.length() > 0) {
		// if (loginService.isBusyLogin(login))
		// return "login zajety";
		// else
		// return "login wolny";
		// } else
		// return "wpisz login";
	}

	@RequestMapping(value = "/register/time", method = RequestMethod.GET)
	public @ResponseBody
	String getTime(@RequestParam String name) {
		String result = new Date().toString();
		return result;
	}

	@RequestMapping(value = "/register/user", method = RequestMethod.GET)
	public @ResponseBody
	User getUser(@RequestParam String name) {
		User user = loginService.getUser(2);
		return user;
	}
}
