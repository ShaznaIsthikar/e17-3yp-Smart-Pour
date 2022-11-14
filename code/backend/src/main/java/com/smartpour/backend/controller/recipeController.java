package com.smartpour.backend.controller;

import com.smartpour.backend.model.Recipe;
import com.smartpour.backend.model.User;
import com.smartpour.backend.repository.RecipeRepository;
import com.smartpour.backend.repository.UserRepository;
import com.smartpour.backend.service.RecipeService;
import com.smartpour.backend.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/smartpour/recipe")

public class recipeController {
    @Autowired
    RecipeService recipeService;

    @Autowired
    RecipeRepository recipeRepository;

    @PostMapping(value = "/addrecipe")
    public String add(@RequestBody Recipe recipe) {
        return recipeService.addrecipe(recipe);
    }

    @GetMapping(value ="/getAllrecipe")
    public List<Recipe> getallrecipe(){
        return recipeService.listAllrecipe();
    }
}
