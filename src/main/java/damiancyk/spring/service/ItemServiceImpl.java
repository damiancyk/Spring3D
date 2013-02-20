package damiancyk.spring.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import damiancyk.spring.dao.ItemDAO;
import damiancyk.spring.form.Item;
import damiancyk.spring.form.User;

@Service
public class ItemServiceImpl implements ItemService {

	@Autowired
	ItemDAO itemDAO;

	@Transactional
	public List<Item> listItem(User user, String order, Integer firstResult,
			Integer maxResults) {
		return itemDAO.listItem(user, order, firstResult, maxResults);
	}

	@Transactional
	public Item getItem(Integer id) {
		return itemDAO.getItem(id);
	}

	@Transactional
	public boolean addOne(Item item) {
		// TODO Auto-generated method stub
		return false;
	}

	@Transactional
	public boolean deleteOne(Item item) {
		// TODO Auto-generated method stub
		return false;
	}

	@Transactional
	public boolean editOne(Item item) {
		// TODO Auto-generated method stub
		return false;
	}

}
