package com.smartpour.backend.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.util.Date;
import java.util.Timer;

@Entity
@Data
@AllArgsConstructor
@NoArgsConstructor
@Table(name="Schedule")
public class Schedule{

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int scheduleId;
    private Date date;
    private int recipeId;
    private int userId;
    private int machineId;

}
