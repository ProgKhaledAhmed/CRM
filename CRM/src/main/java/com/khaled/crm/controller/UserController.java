package com.khaled.crm.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.khaled.crm.model.User;
import com.khaled.crm.service.UserService;

@Controller("/users")
public class UserController {
	private UserService userService;
	
	@Autowired(required = true)
	@Qualifier(value = "userService")
	public void setUserService(UserService us) {
		this.userService = us;
	}

	@RequestMapping(value = "/users", method = RequestMethod.GET)
	public String listUsers(Model model) {
		model.addAttribute("user", new User());
		model.addAttribute("listUsers", this.userService.listUsers());
		return "users";
	}
	
	@RequestMapping(value = "/findUsers", method = RequestMethod.GET)
	public String findUsers(@ModelAttribute("user") User user, Model model) {
		model.addAttribute("user", new User());
		model.addAttribute("listUsers",
			this.userService.searchUsers(
				user.getFirstname(),
				user.getLastname(),
				user.getUsername(),
				user.getEmail(),
				user.getGender(),
				user.getAge(),
				user.getTelephone(),
				user.getType()
			)
		);
		return "users";
	}

	// For add and update user both
	@RequestMapping(value = "/users/add", method = RequestMethod.POST)
	public String addUser(@ModelAttribute("user") User user) {
		if (user.getId() == 0) {
			// new user, add it
			this.userService.addUser(user);
		} else {
			// existing user, call update
			this.userService.updateUser(user);
		}
		return "redirect:/users";
	}

	@RequestMapping("/removeUser/{id}")
	public String removeUser(@PathVariable("id") int id) {
		this.userService.removeUser(id);
		return "redirect:/users";
	}

	@RequestMapping("/editUser/{id}")
	public String editUser(@PathVariable("id") int id, Model model) {
		model.addAttribute("user", this.userService.getUserById(id));
		model.addAttribute("listUsers", this.userService.listUsers());
		return "users";
	}
}
