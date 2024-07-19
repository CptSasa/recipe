package com.example.recipe.Recipe;

import com.example.recipe.Ingridient.Ingredient;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import lombok.Getter;
import lombok.Setter;

import java.util.List;

@Getter
@Setter
@Entity
@Table(name = "recipe")
public class Recipe {
    @Id
    private Long id;
    @OneToMany
    private List<Ingredient> ingredientsList;
    private int kcalper100;


}
