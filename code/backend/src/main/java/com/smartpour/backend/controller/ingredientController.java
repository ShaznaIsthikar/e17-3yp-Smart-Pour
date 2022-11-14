package com.smartpour.backend.controller;

import com.smartpour.backend.model.Ingredient;
import com.smartpour.backend.model.User;
import com.smartpour.backend.repository.IngredientRepository;
import com.smartpour.backend.repository.UserRepository;
import com.smartpour.backend.service.IngredientService;
import com.smartpour.backend.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/smartpour/ingredient")
public class ingredientController {
    @Autowired
    IngredientService ingredientService;

    @Autowired
    IngredientRepository ingredientRepository;

    @PostMapping(value = "/saveingredients")
    public Ingredient add(@RequestBody Ingredient ingredient) {
        //User existUser = userService.findUserByUsername(user.getUsername());
        //if (existUser != null) { System.out.println("You have already signed up"); }
        //throw new ErrorCode(HttpStatus.BAD_REQUEST.toString(), "You have already signed up",HttpStatus.BAD_REQUEST);
        ingredientService.saveingrediets(ingredient);
        return (ingredient);

    }
    @GetMapping(value ="/getAllingredients")
    public List<Ingredient> getallingredients(){
        return ingredientService.listAllingredeints();
    }
}
