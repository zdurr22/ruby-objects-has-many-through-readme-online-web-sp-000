class Customer
  attr_accessor :name, :age, :waiter
  @@all = []

  def initialize(name, age)
    @name = name
    @age = age
    @@all << self
  end

  def self.all
    @@all
  end

  def new_meal(waiter, total, tip=0)
    Meal.new(waiter, self, total, tip)
  end

  def meals
    if Meal.customer = self
      Meal.all.collect do |customer|
    end
  end


end
