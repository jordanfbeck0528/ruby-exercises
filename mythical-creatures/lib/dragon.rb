class Dragon
  attr_reader :name, :color, :rider
  def initialize(name, color, rider)
    @name = name
    @color = color
    @rider = rider
    @hungry = true
    @eat = eat
  end
  def hungry?
    @hungry
  end
  def eat
    @eat += 1
    @hungry = false if @eat == 3
  end
end
