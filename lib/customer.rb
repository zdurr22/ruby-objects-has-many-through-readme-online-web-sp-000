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
      Meal.all.select do |meal|
        meal.customer == self
      end
  end

  def waiters
      Meal.all.map do |meal|
        meal.waiter
      end
  end


end
