package com.smartpour.backend.controller;


import com.smartpour.backend.model.Machine;
import com.smartpour.backend.model.User;
import com.smartpour.backend.repository.MachineRepository;
import com.smartpour.backend.repository.UserRepository;
import com.smartpour.backend.service.MachineService;
import com.smartpour.backend.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/smartpour/machine")
public class machineController {

    @Autowired
    MachineService machineService;

    @Autowired
    MachineRepository machineRepository;

    @PostMapping(value = "/addmachine")
    public String add(@RequestBody Machine machine) {
        return machineService.addmachine(machine);

    }
    @GetMapping(value ="/getAllmachines")
    public List<Machine> getallmachines(){
        return machineService.listAllmachine();
    }
}
