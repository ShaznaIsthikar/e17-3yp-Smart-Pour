package com.smartPourdatabase.machine;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MachineService {
	
	@Autowired
	private MachineRepository machineRepository;
	
	public Machine addMachine(Machine device) {
		return machineRepository.save(device);
	}


	public List<Machine> getMachines() {
		// TODO Auto-generated method stub
		return machineRepository.findAll();
	}
	


}
