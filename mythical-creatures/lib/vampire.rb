# class Vampire
#
#   attr_reader :name, :pet, :thirsty
#
#   def initialize(name, pet = "bat", thirsty = true)
#     @name = name
#     @pet = pet
#     @thirsty = thirsty
#   end
#
#   def thirsty?
#     @thirsty
#   end
#
#   def drink
#     @thirsty = false
#   end
# end
require "pry";
class Vampire
  attr_reader :name, :pet, :thirsty
  def initialize(name, pet = "bat", thirsty = true)
    @name = name
    @pet = pet
    @thirsty = thirsty
    binding.pry
  end
  def pet
    @pet
  end
  def thirsty?
    @thirsty
  end
  def drink
    @thirsty = false
  end
end
