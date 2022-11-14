package com.smartpour.backend.service;

import com.smartpour.backend.model.User;
import com.smartpour.backend.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.List;

@Service
@Transactional
public class UserService {

    @Autowired
    private UserRepository userRepository;

    public void saveuser(User user){
        userRepository.save(user);
    }
    public List<User>listAllusers() {
        return userRepository.findAll();
    }
    public User findUserByUsername (String username){
        return userRepository.findByUsername(username);
    }



}
