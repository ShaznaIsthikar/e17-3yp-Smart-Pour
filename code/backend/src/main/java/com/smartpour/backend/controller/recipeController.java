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

    @PostMapping(value = "/saverecipe")
    public Recipe add(@RequestBody Recipe recipe) {
        //User existUser = userService.findUserByUsername(user.getUsername());
        //if (existUser != null) { System.out.println("You have already signed up"); }
        //throw new ErrorCode(HttpStatus.BAD_REQUEST.toString(), "You have already signed up",HttpStatus.BAD_REQUEST);
        recipeService.saveRecipe(recipe);
        return (recipe);

    }
    @GetMapping(value ="/getAllrecipe")
    public List<Recipe> getallrecipe(){
        return recipeService.listAllrecipe();
    }
}
