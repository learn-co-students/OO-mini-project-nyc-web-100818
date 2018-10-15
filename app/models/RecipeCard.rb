require 'date'

class RecipeCard

  attr_accessor :date, :user, :recipe, :rating
  # attr_reader :rating

  @@all = []

  def initialize(date, user, recipe, rating)
    @date = date
    @rating = rating
    @user = user
    @recipe = recipe
    @@all << self
  end

  def self.all
    @@all
  end

end
