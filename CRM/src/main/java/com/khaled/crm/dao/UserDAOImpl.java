package com.khaled.crm.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.khaled.crm.model.Person;
import com.khaled.crm.model.User;

public class UserDAOImpl implements UserDAO {

	private static final Logger logger = LoggerFactory.getLogger(PersonDAOImpl.class);

	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sf) {
		this.sessionFactory = sf;
	}

	@Override
	public void addUser(User user) {
		Session session = this.sessionFactory.getCurrentSession();
		session.persist(user);
		logger.info("User saved successfully, Person Details=" + user);
	}

	@Override
	public void updateUser(User user) {
		Session session = this.sessionFactory.getCurrentSession();
		session.update(user);
		logger.info("User updated successfully, Person Details=" + user);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<User> listUsers() {
		Session session = this.sessionFactory.getCurrentSession();
		List<User> usersList = session.createQuery("from User").list();
		for (User user : usersList) {
			logger.info("User List::" + user);
		}
		return usersList;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<User> searchUsers(String firstname, String lastname, String username, String email,
		String gender, int age, String telephone, String type) {
		Session session = this.sessionFactory.getCurrentSession();
		
		StringBuffer str = new StringBuffer("FROM User u WHERE 1=1 ");

		if (!"".equals(firstname))
			str.append(" AND u.firstname LIKE '%" + firstname + "%'  ");
		if (!"".equals(lastname))
			str.append(" AND u.lastname LIKE '%" + lastname + "%'  ");
		if (!"".equals(firstname))
			str.append(" AND u.firstname LIKE '%" + firstname + "%'  ");
		if (!"".equals(username))
			str.append(" AND u.username LIKE '%" + username + "%'  ");
		if (!"".equals(email))
			str.append(" AND u.email LIKE '%" + email + "%'  ");
		if (!"".equals(gender) && !"Gender".equals(gender))
			str.append(" AND u.gender LIKE '%" + gender + "%'  ");
		if (!"".equals(telephone))
			str.append(" AND u.telephone LIKE '%" + telephone + "%'  ");
		if (!"".equals(telephone))
			str.append(" AND u.telephone LIKE '%" + telephone + "%'  ");
		if (!"".equals(type) && !"Type".equals(type))
			str.append(" AND u.type LIKE '%" + type + "%'  ");
		if (!"".equals(type))

		str.append(" ORDER BY u.birthdate");

		Query createQuery = session.createQuery(str.toString());
		List<User> users = createQuery.list();
		return users;
	}

	@SuppressWarnings("deprecation")
	@Override
	public User getUserById(int id) {
		Session session = this.sessionFactory.getCurrentSession();
		User user = (User) session.load(User.class, new Integer(id));
		logger.info("User loaded successfully, User details=" + user);
		return user;
	}

	@SuppressWarnings("deprecation")
	@Override
	public void removeUser(int id) {
		Session session = this.sessionFactory.getCurrentSession();
		User user = (User) session.load(User.class, new Integer(id));
		if (null != user) {
			session.delete(user);
		}
		logger.info("User deleted successfully, User details=" + user);
	}
}
