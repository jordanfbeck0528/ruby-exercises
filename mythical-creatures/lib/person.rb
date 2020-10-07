class Person
  attr_reader :name

  def initialize(name)
    @name = name
    @stoned = false
  end

  def stoned?
    @stoned 
  end

  def get_stoned
    @stoned = true
  end
end
