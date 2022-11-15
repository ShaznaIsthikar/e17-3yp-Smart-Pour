package com.smartpour.backend.service;

import com.smartpour.backend.model.Machine;
import com.smartpour.backend.model.Schedule;
import com.smartpour.backend.model.User;
import com.smartpour.backend.repository.MachineRepository;
import com.smartpour.backend.repository.ScheduleRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.List;

@Service
@Transactional
public class ScheduleService {
    @Autowired
    private ScheduleRepository scheduleRepository;

    public void saveschedule(Schedule schedule){
        scheduleRepository.save(schedule);
    }
    public List<Schedule> listAllschedules() {
        return scheduleRepository.findAll();
    }

    public String addschedule(Schedule schedule) {
        try {
            if (!scheduleRepository.existsByDate(schedule.getDate())) {
                scheduleRepository.save(schedule);
                return "Order added successfully";
            }else {
                return "Can't make the order at this time";
            }
        }catch (Exception e) {
            throw e;
        }
    }
}
