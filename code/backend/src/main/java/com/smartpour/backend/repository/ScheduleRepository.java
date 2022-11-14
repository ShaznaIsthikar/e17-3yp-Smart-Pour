package com.smartpour.backend.repository;

import com.smartpour.backend.model.Schedule;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.Date;

@Repository
public interface ScheduleRepository extends JpaRepository<Schedule,Integer> {
    public boolean existsByDate(Date date);
}

