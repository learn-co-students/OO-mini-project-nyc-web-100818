class Recipe

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    # @allergens = []
    @@all << self
  end

  def self.all
    @@all
  end

  def allergens
    # my_allergens =
    Allergen.allergens & self.ingredients
    # @allergens.push(my_allergens).flatten
  end

  def recipe_cards
    RecipeCard.all.select do |rc|
      rc.recipe == self
    end
  end

  def recipe_ingredients
    RecipeIngredients.all.select do |ri|
      ri.recipe == self
    end
  end

  def users
    self.recipe_cards.map do |rc|
      rc.user
    end
  end

  def ingredients
    self.recipe_ingredients.map do |ri|
      ri.ingredient
    end
  end

end # End of Recipe Class
