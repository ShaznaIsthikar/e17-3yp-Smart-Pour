package com.smartPourdatabase.machine;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;

import com.smartPourdatabase.user.User;

import lombok.Data;

@Entity
@Data

public class Machine {
	@Id
	@GeneratedValue
	Integer machine_id;
	String MAC;
	String machineName;
	Boolean online;
	
//	@ManyToMany
//	@JoinTable(
//			name="devices",
//			joinColumns = @JoinColumn(name="machine_id"),
//			inverseJoinColumns = @JoinColumn(name="user_id")
//			)
//	
//	
//	
//	
//	private Set<Machine> signedupusers = new HashSet<>();
//	
//	public Set<Machine> getDevices() {
//		return signedupusers;
//	}
//
//	public void setDevices(Set<Machine> devices) {
//		this.signedupusers = devices;
//	}

	public Integer getMachine_id() {
		return machine_id;
	}

	public void setMachine_id(Integer machine_id) {
		this.machine_id = machine_id;
	}

	public String getMAC() {
		return MAC;
	}

	public void setMAC(String mAC) {
		MAC = mAC;
	}

	public String getMachineName() {
		return machineName;
	}

	public void setMachineName(String machineName) {
		this.machineName = machineName;
	}

	public Boolean getOnline() {
		return online;
	}

	public void setOnline(Boolean online) {
		this.online = online;
	}


	
	public Machine() {
		
	}

	public Machine(Integer machine_id, String MAC, String machineName,Boolean online) {
		super();
		this.machine_id = machine_id;
		this.MAC = MAC;
		this.machineName = machineName;
		this.online = online;
	}



}
