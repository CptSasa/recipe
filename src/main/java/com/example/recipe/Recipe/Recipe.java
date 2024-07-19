package com.example.recipe.Recipe;

import com.example.recipe.Ingridient.Ingredients;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import lombok.Getter;
import lombok.Setter;

import java.util.List;

@Getter
@Setter
@Entity
public class Recipe {
    @Id
    private Long id;
    @OneToMany
    private List<Ingredients> ingredientsList;
    private int kcalper100;


}
