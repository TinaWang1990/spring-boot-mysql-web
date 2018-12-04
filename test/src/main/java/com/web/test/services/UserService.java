package com.web.test.services;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.web.test.model.User;
import com.web.test.repository.UserRepository;

@Service
@Transactional
public class UserService {
	
	private final UserRepository userRepository;
	
	public UserService(UserRepository userRepository) {
		this.userRepository=userRepository;
	}
	
	public void saveMyUser(User user) {
		
		userRepository.save(user);
	}
}
