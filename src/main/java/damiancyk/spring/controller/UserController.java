package damiancyk.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = "/user")
public class UserController {

	/**
	 * my profile
	 */
	@RequestMapping(value = "/profile")
	public ModelAndView myProfile(ModelAndView mav) {
		mav.setViewName("user/profile");
		return mav;
	}

	/**
	 * edit your profile
	 */
	@RequestMapping(value = "/profile/edit")
	public void editProfile() {

	}

	/**
	 * add new one item
	 */
	@RequestMapping(value = "/item/add", method = RequestMethod.GET)
	public void addItem(@PathVariable("Item") String item) {

	}

	/**
	 * list items which you were added
	 */
	@RequestMapping(value = "/item/list")
	public void listItem() {

	}
}
