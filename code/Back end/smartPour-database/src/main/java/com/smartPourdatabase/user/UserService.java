package com.smartPourdatabase.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserService {
	
	@Autowired
	private UserRepository userRepository;
	
	public User addUser(User user) {
		return userRepository.save(user);
	}
	
	public User isOlduser (User user) {
		 User oldUser=userRepository.findByEmailAndPassword(user.email, user.password);
	
	return oldUser;
	}

}
