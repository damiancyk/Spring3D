package damiancyk.spring.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import damiancyk.spring.form.Item;
import damiancyk.spring.form.User;

@Repository
public class ItemDAOImpl implements ItemDAO {
	@Autowired
	private SessionFactory sessionFactory;

	@SuppressWarnings("unchecked")
	public List<Item> listItem(User user, String order, Integer firstResult,
			Integer maxResults) {
		Session session = sessionFactory.getCurrentSession();
		Criteria criteria = session.createCriteria(Item.class);
//		String s[] = order.split(",");
//		for (int i = 0; i < s.length; i++) {
//			criteria.addOrder(Order.desc(s[i]));
//		}

//		if (user != null)
//			criteria.add(Restrictions.like("idUser", user));
//		criteria.setFirstResult(firstResult);
//		criteria.setMaxResults(maxResults);
		return criteria.list();
	}

	public Item getItem(Integer id) {
		Session session = sessionFactory.getCurrentSession();
		Criteria criteria = session.createCriteria(Item.class);
		criteria.add(Restrictions.like("idItem", id));

		return (Item) criteria.uniqueResult();
	}

	public boolean addOne(Item item) {
		// TODO Auto-generated method stub
		return false;
	}

	public boolean deleteOne(Item item) {
		// TODO Auto-generated method stub
		return false;
	}

	public boolean editOne(Item item) {
		// TODO Auto-generated method stub
		return false;
	}

}
