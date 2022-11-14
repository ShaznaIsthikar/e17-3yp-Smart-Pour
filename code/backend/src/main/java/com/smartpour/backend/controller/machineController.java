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

    @PostMapping(value = "/savemachine")
    public Machine add(@RequestBody Machine machine) {
        //User existUser = machineService.findMachineByname(machine.getUsername());
        //if (existUser != null) { System.out.println("You have already signed up"); }
        //throw new ErrorCode(HttpStatus.BAD_REQUEST.toString(), "You have already signed up",HttpStatus.BAD_REQUEST);
        machineService.savemachine(machine);
        return (machine);

    }
    @GetMapping(value ="/getAllmachines")
    public List<Machine> getallmachines(){
        return machineService.listAllmachine();
    }
}
