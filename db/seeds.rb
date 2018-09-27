Cocktail.create(name: 'Old Fashioned', seasonality: 'year-round', price: 9)

Ingredient.create(name: 'Bourbon', cocktail: Cocktail.find_by(name: 'Old Fashioned'), quantity: 2.0)
Ingredient.create(name: 'Sugar', cocktail: Cocktail.find_by(name: 'Old Fashioned'), quantity: 1.0)
Ingredient.create(name: 'Bitters', cocktail: Cocktail.find_by(name: 'Old Fashioned'), quantity: 2.0)

Cocktail.create(name: 'Manhattan', seasonality: 'year-round', price: 10)

Ingredient.create(name: 'Bourbon', cocktail: Cocktail.find_by(name: 'Manhattan'), quantity: 2.0)
Ingredient.create(name: 'Sweet Vermouth', cocktail: Cocktail.find_by(name: 'Manhattan'), quantity: 1.0)
Ingredient.create(name: 'Bitters', cocktail: Cocktail.find_by(name: 'Manhattan'), quantity: 2.0)
