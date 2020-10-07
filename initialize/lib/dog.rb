class Dog
  attr_reader :name, :breed, :greeting
  def initialize(name, breed)
    @name = name
    @breed = breed
    @greeting = "Woof, I'm #{name} the #{breed}!"
  end
end
