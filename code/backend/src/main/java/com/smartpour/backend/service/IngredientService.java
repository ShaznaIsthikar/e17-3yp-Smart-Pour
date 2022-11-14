package com.smartpour.backend.service;


import com.smartpour.backend.model.Ingredient;
import com.smartpour.backend.model.Machine;
import com.smartpour.backend.repository.IngredientRepository;
import com.smartpour.backend.repository.MachineRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.List;
@Service
@Transactional
public class IngredientService {
    @Autowired
    private IngredientRepository ingredientRepository;

    public void saveingrediets(Ingredient ingredient){
        ingredientRepository.save(ingredient);
    }
    public List<Ingredient> listAllingredeints() {
        return ingredientRepository.findAll();
    }
}
