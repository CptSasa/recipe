package com.example.recipe.Ingridient;

import org.springframework.beans.factory.annotation.Autowired;

public class IngredientsController {
    private final  IngredientsService ingredientsService;

    public IngredientsController(IngredientsService ingredientsService) {
        this.ingredientsService = ingredientsService;
    }
}
