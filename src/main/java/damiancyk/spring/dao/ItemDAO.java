package damiancyk.spring.dao;

import java.util.List;

import damiancyk.spring.form.Item;
import damiancyk.spring.form.User;

public interface ItemDAO {
	
	public List<Item> listItem(User user, String order, Integer firstResult,
			Integer maxResults);

	public Item getItem(Integer id);

	public boolean addOne(Item item);

	public boolean deleteOne(Item item);

	public boolean editOne(Item item);
	
}
