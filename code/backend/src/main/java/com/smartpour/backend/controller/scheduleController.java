package com.smartpour.backend.controller;

import com.smartpour.backend.model.Ingredient;
import com.smartpour.backend.model.Schedule;
import com.smartpour.backend.model.User;
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

    @PostMapping(value = "/addschedule")
    public String  add(@RequestBody Schedule schedule) {
        return scheduleService.addschedule(schedule);
    }

    @GetMapping(value ="/getAllschedules")
    public List<Schedule> getallschedules(){
        return scheduleService.listAllschedules();
    }

}
