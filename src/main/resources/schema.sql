-- Table for storing recipe information

CREATE USER postgres WITH PASSWORD 'postgres';
CREATE TABLE Recipe (
                        id BIGINT PRIMARY KEY,           -- Recipe ID
                        kcalper100 INT NOT NULL          -- Calories per 100 units
);

-- Table for storing ingredient information
CREATE TABLE Ingredient (
                            id BIGINT PRIMARY KEY,           -- Ingredient ID
                            imagePath VARCHAR(255),          -- Path to the ingredient image
                            kcalPer100 INT NOT NULL,         -- Calories per 100 units
                            protein INT NOT NULL,            -- Protein content
                            carbs INT NOT NULL,              -- Carbohydrates content
                            fats INT NOT NULL                -- Fats content
);

-- Join table to handle many-to-many relationship between Recipe and Ingredient
CREATE TABLE Recipe_Ingredient (
                                   recipe_id BIGINT NOT NULL,       -- Foreign key to Recipe
                                   ingredient_id BIGINT NOT NULL,   -- Foreign key to Ingredient
                                   PRIMARY KEY (recipe_id, ingredient_id),   -- Composite primary key
                                   FOREIGN KEY (recipe_id) REFERENCES Recipe(id) ON DELETE CASCADE,
                                   FOREIGN KEY (ingredient_id) REFERENCES Ingredient(id) ON DELETE CASCADE
);