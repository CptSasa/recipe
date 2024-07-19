package com.example.recipe.Ingridient;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import lombok.Getter;
import lombok.Setter;

@Entity
@Setter
@Getter
public class Ingredients {
    @Id
    private Long id;


}
