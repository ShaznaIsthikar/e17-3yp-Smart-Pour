package com.smartpour.backend.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.util.Date;

@Entity
@AllArgsConstructor
@NoArgsConstructor
@Data
@Table(name="mit")
public class MTI {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int mitId;
    private int machineId;
    private int ingredientId;
    private int currentamount;
    private int remainingamount;
}

