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

    public void savemachine(Machine machine){
        machineRepository.save(machine);
    }
    public List<Machine> listAllmachine() {
        return machineRepository.findAll();
    }
}
