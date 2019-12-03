package com.khaled.crm.dao;

import java.util.List;

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
		String ageObj = age + "";
		if(age <= 0) {
			ageObj = null;
		}
		String hql ="FROM User WHERE (firstname=:firstname OR :firstname IS NULL)"
				+ "AND (lastname=:lastname OR :lastname IS NULL) "
				+ "AND (username=:username OR :username IS NULL) "
				+ "AND (email=:email OR :email IS NULL) "
				+ "AND (gender=:gender OR :gender IS NULL) "
				+ "AND (age=:age OR :age IS NULL) "
				+ "AND (telephone=:telephone OR :telephone IS NULL) "
				+ "AND (type=:type OR :type IS NULL)";
		
		List<User> usersList = session.createQuery(hql)
				.setParameter("firstname", firstname)
				.setParameter("lastname", null)
				.setParameter("username", null)
				.setParameter("email", null)
				.setParameter("gender", null)
				.setParameter("age", null)
				.setParameter("telephone", null)
				.setParameter("type", null)
				.list();
		for (User user : usersList) {
			logger.info("User List::" + user);
		}
		return usersList;
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
