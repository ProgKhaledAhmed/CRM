package com.khaled.crm.dao;

import java.util.List;

import com.khaled.crm.model.User;

public interface UserDAO {

	public void addUser(User user);

	public void updateUser(User user);

	public List<User> listUsers();

	public List<User> searchUsers(
									String firstname,
									String lastname,
									String username,
									String email,
									String gender,
									int age,
									String telephone,
									String type
								 );

	public User getUserById(int id);

	public void removeUser(int id);
}
