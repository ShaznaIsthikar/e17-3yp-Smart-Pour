package com.smartpour.backend.repository;

import com.smartpour.backend.model.Recipe;
import com.smartpour.backend.model.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface RecipeRepository extends JpaRepository<Recipe,Integer> {
    Recipe findByRecipeName(String recipe);
    public boolean existsByrecipeName(String recipeName);

}
