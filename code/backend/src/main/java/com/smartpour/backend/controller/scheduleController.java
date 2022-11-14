package com.smartpour.backend.controller;

import com.smartpour.backend.model.Ingredient;
import com.smartpour.backend.model.Schedule;
import com.smartpour.backend.repository.IngredientRepository;
import com.smartpour.backend.repository.ScheduleRepository;
import com.smartpour.backend.service.IngredientService;
import com.smartpour.backend.service.ScheduleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/smartpour/schedule")
public class scheduleController {
    @Autowired
    ScheduleRepository scheduleRepository;

    @Autowired
    ScheduleService scheduleService;

    @PostMapping(value = "/saveschedule")
    public Schedule add(@RequestBody Schedule schedule) {
        //User existUser = userService.findUserByUsername(user.getUsername());
        //if (existUser != null) { System.out.println("You have already signed up"); }
        //throw new ErrorCode(HttpStatus.BAD_REQUEST.toString(), "You have already signed up",HttpStatus.BAD_REQUEST);
        scheduleService.saveschedule(schedule);
        return (schedule);

    }
    @GetMapping(value ="/getAllschedules")
    public List<Schedule> getallschedules(){
        return scheduleService.listAllschedules();
    }

}
