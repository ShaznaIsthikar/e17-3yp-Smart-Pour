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

    public List<User>listAllusers() {
        return userRepository.findAll();
    }
    public User findUserByUsername (String username){
        return userRepository.findByUsername(username);
    }

    public String adduser(User user) {
        try {
            if (!userRepository.existsByUsername(user.getUsername())) {
                userRepository.save(user);
                return "User added successfully";
            }else {
                return "This user already exists";
            }
        }catch (Exception e) {
            throw e;
        }
    }



}
