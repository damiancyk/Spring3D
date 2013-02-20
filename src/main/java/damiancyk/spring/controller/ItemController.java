package damiancyk.spring.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import damiancyk.spring.form.Item;
import damiancyk.spring.service.ItemService;

@Controller
@RequestMapping(value = "/item")
public class ItemController {

	@Autowired
	ItemService itemService;

	@RequestMapping(value = "/list")
	public ModelAndView listItem(ModelAndView mav) {
		mav.setViewName("item/list");
		List<Item> itemList = itemService.listItem(null, "", 0, 100);
		mav.addObject("itemList", itemList);
		return mav;
	}

	@RequestMapping(value = "/one/{idItem}", method = RequestMethod.GET)
	public ModelAndView oneItem(ModelAndView mav,
			@PathVariable("idItem") Integer idItem) {
		mav.setViewName("item/one");
		Item item = itemService.getItem(idItem);
		mav.addObject("item", item);
		return mav;
	}
}
