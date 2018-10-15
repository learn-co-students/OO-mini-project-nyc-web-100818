require 'date'

class User

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    # @recipes = []
    # @allergens = []
    @@all << self
  end

  def allergens
    Allergen.all.select do |a|
      a.user == self
    end
  end

  def declare_allergen(ingredient)
    Allergen.new(self, ingredient)
  end

  def add_recipe_card(date, recipe, rating)
    RecipeCard.new(date, self, recipe, rating)
  end

  def recipe_cards
    RecipeCard.all.select do |rc|
      rc.user == self
    end
  end

  def recipes
    self.recipe_cards.map do |rc|
      rc.recipe
    end
  end

  def top_three_recipes
    t3 = self.recipe_cards.sort_by do |rc|
      rc.rating
    end
    t3.reverse[0..2]
  end

  # def most_recent_recipe
  #   array = self.recipe_cards.map do |rc|
  #     rc.date
  #   end
  #   array.sort
  # end

  def self.all
    @@all
  end
end
