class Cat
  attr_reader :name, :sound
  def initialize(name, sound = "meow")
    @name = name
    @sound = sound
  end
end
