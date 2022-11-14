package com.smartpour.backend.service;

import com.smartpour.backend.model.Machine;
import com.smartpour.backend.model.User;
import com.smartpour.backend.repository.MachineRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.List;

@Service
@Transactional
public class MachineService {

    @Autowired
    private MachineRepository machineRepository;

    public String addmachine(Machine machine){
        try {
            if (!machineRepository.existsByMacaddress(machine.getMacaddress())) {
                machineRepository.save(machine);
                return "Machine added successfully";
            }else {
                return "This machine already exists";
            }
        }catch (Exception e) {
            throw e;
        }
    }
    public List<Machine> listAllmachine() {
        return machineRepository.findAll();
    }
}
