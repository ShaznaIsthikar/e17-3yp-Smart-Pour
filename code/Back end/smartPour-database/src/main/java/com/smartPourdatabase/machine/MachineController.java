package com.smartPourdatabase.machine;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class MachineController {

	@Autowired
	private MachineService machineService;
	
	@PostMapping ("/addDevice")
	public Machine addDevice(@RequestBody Machine device) {
		return machineService.addMachine(device);
	}
	
	@RequestMapping ("/devices")
	public List<Machine> getDevices() {
		
		return machineService.getMachines();
		
	}
	
//	@RequestMapping ("/devices/{id}")
//	public Machine getDevices (@RequestBody Machine user) {
//		return machineService.isOlduser(user);
		
//	}
	
}
