package com.khaled.crm.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.khaled.crm.dao.UserDAO;
import com.khaled.crm.model.User;

@Service
public class UserServiceImpl implements UserService {
	
	private UserDAO userDAO;

	public UserDAO getUserDAO() {
		return userDAO;
	}

	public void setUserDAO(UserDAO userDAO) {
		this.userDAO = userDAO;
	}

	@Override
	@Transactional
	public void addUser(User user) {
		this.userDAO.addUser(user);
	}

	@Override
	@Transactional
	public void updateUser(User user) {
		this.userDAO.updateUser(user);
		
	}

	@Override
	@Transactional
	public List<User> listUsers() {
		return this.userDAO.listUsers();
	}

	@Override
	@Transactional
	public List<User> searchUsers(String firstname, String lastname, String username, String email, String gender,
			int age, String telephone, String type) {
		return this.userDAO.searchUsers(firstname, lastname, username, email, gender, age, telephone, type);
	}

	@Override
	@Transactional
	public User getUserById(int id) {
		return this.userDAO.getUserById(id);
	}

	@Override
	@Transactional
	public void removeUser(int id) {
		this.userDAO.removeUser(id);
	}
}
