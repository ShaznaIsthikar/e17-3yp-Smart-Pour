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

    @PostMapping(value = "/saveuser")
    public User add(@RequestBody User user) {
        User existUser = userService.findUserByUsername(user.getUsername());
        if (existUser != null) {
            System.out.println("You have already signed up");
        }
            //throw new ErrorCode(HttpStatus.BAD_REQUEST.toString(), "You have already signed up",HttpStatus.BAD_REQUEST);
        userService.saveuser(user);
        return (user);

    }
    @GetMapping(value ="/getAllusers")
    public List<User> getallusers(){
        return userService.listAllusers();
    }



}

