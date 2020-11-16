class Waiter
  attr_accessor :name, :yrs_experience, :customer
  @@all = []

  def initialize(name, yrs_experience)
    @name = name
    @yrs_experience = yrs_experience
    @@all << self
  end

  def self.all
    @@all
  end

  def new_meal(name, total, tip=0)
    Meal.new(self, customer, total, tip)
  end

end
