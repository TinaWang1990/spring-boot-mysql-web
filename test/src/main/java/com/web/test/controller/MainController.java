package com.web.test.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.web.test.model.User;
import com.web.test.services.UserService;

@RestController
public class MainController {
	
	@Autowired
	private UserService userService;

	
	@GetMapping("/")
	public String hello() {
		
		return "this is home page";
	}
	
	
//	@PostMapping("/save-user")
//	public String saveUser(@RequestParam String username, @RequestParam String firstname, @RequestParam String lastname, @RequestParam int age, @RequestParam String password) {
//		User user = new User(username, firstname, lastname, age, password);
//		userService.saveMyUser(user);
//		return "UserSaved do";
//	}
//	


}
