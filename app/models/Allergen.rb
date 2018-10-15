class Allergen

  attr_accessor :user, :ingredient

  @@all = []
  @@allergens = []

  def initialize(user,ingredient)
    @user = user
    @ingredient = ingredient
    @@all << self
    @@allergens << ingredient
  end

  def self.all
    @@all
  end

  def self.allergens
    @@allergens
  end

end
