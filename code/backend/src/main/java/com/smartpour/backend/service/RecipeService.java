package com.smartpour.backend.service;

import com.smartpour.backend.model.Recipe;
import com.smartpour.backend.model.User;
import com.smartpour.backend.repository.RecipeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.List;

@Service
@Transactional
public class RecipeService {

    @Autowired
    private RecipeRepository recipeRepository;

    public void saveRecipe(Recipe recipe){
        recipeRepository.save(recipe);
    }
    public List<Recipe> listAllrecipe() {
        return recipeRepository.findAll();
    }
    public Recipe findUserByRecipeName (String recipe){
        return recipeRepository.findByRecipeName(recipe);
    }

    public String addrecipe(Recipe recipe) {
        try {
            if (!recipeRepository.existsByrecipeName(recipe.getRecipeName())) {
                recipeRepository.save(recipe);
                return "Recipe added successfully";
            }else {
                return "This recipe already exists";
            }
        }catch (Exception e) {
            throw e;
        }
    }


}
