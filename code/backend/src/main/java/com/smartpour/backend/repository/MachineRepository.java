package com.smartpour.backend.repository;

import com.smartpour.backend.model.Machine;
import com.smartpour.backend.model.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface MachineRepository extends JpaRepository<Machine,Integer> {
    public boolean existsByMacaddress(String macaddresss);

}
