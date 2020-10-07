class Horse
  attr_accessor :name, :diet
  def initialize(name)
    @name = name
    self.diet = []

  end
  def add_to_diet(food)
    self.diet << food
  end
end
