package com.smartpour.backend.controller;

import com.smartpour.backend.model.User;
import com.smartpour.backend.repository.UserRepository;
import com.smartpour.backend.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/smartpour/user")
public class userController {

    @Autowired
    UserService userService;

    @Autowired
    UserRepository userRepository;

    @PostMapping(value = "/adduser")
    public String  add(@RequestBody User user) {
        return userService.adduser(user);
    }
    @GetMapping(value ="/getAllusers")
    public List<User> getallusers(){
        return userService.listAllusers();
    }


}

