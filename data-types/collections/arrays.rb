require 'minitest/autorun'  # => true
require 'minitest/pride'    # => true

class ArraysTest < Minitest::Test  # => Minitest::Test
  def test_0
    # skip
    # In the line below, create a new empty array
    empty = []                     # => []
    assert_equal [], empty         # => true
  end                              # => :test_0

  def test_1
    # skip
    # In the line below, create and array with the numbers 1 - 5
    nums = [*1..5]                  # => [1, 2, 3, 4, 5]
    assert_equal [1,2,3,4,5], nums  # => true
  end                               # => :test_1

  def test_2
    # skip
    nums = [1,2,3]                 # => [1, 2, 3]
    # In the line below, call a method on the nums variable
    # defined above to access the second element
    actual = nums[1]               # => 2
    expected = 2                   # => 2
    assert_equal expected, actual  # => true
  end                              # => :test_2

  def test_22
    # skip
    # In the line below, call a method on the nums variable
    # defined above to access the last element
    nums = [1,2,3]  # => [1, 2, 3]

    actual = nums[-1]              # => 3
    expected = 3                   # => 3
    assert_equal expected, actual  # => true

    # Now try to find another way to achieve the same effect
    nums = [1,2,3]                 # => [1, 2, 3]
    actual = nums.slice(2)         # => 3
    expected = 3                   # => 3
    assert_equal expected, actual  # => true
  end                              # => :test_22

  def test_3
    # skip
    hummus = ["tahini", "chickpeas", "lemons"]  # => ["tahini", "chickpeas", "lemons"]
    # Call a method on the hummus variable that will
    # tell us how many elements there are in the array
    # require "pry"; binding.pry                  # => nil
    assert_equal 3, hummus.count                # => true
  end                                           # => :test_3

  def test_4
    # skip
    world_cup = ["Germany", "Mexico", "Iceland", "Portugal"]  # => ["Germany", "Mexico", "Iceland", "Portugal"]
    # In the line below, add the element "Brazil" to the end of the world_cup array
    world_cup.push("Brazil")                                  # => ["Germany", "Mexico", "Iceland", "Portugal", "Brazil"]
    assert_equal "Brazil", world_cup.last                     # => true

    # Use a different method to add the element "Japan" to the end of the array
world_cup << "Japan"                      # => ["Germany", "Mexico", "Iceland", "Portugal", "Brazil", "Japan"]
    assert_equal "Japan", world_cup.last  # => true
  end                                     # => :test_4

  def test_a
    # skip
    world_cup = ["Germany", "Mexico", "Iceland", "Portugal"]  # => ["Germany", "Mexico", "Iceland", "Portugal"]
    # Call a method on the world_cup variable to remove and return
    # the last element of the array
    last_element = world_cup.pop                              # => "Portugal"
    assert_equal "Portugal", last_element                     # => true
    assert_equal ["Germany", "Mexico", "Iceland"], world_cup  # => true
  end                                                         # => :test_a

  def test_5
    # skip
    karaoke = ["Shake it Off", "Dancing Queen", "Bohemian Rhapsody"]  # => ["Shake it Off", "Dancing Queen", "Bohemian Rhapsody"]
    # Call a method on the karaoke variable to ask whether "Toxic"
    # is an element or not
    toxic_in_array = karaoke.include?("Toxic")                        # => false
    assert_equal false, toxic_in_array                                # => true

    # Now call a method on the karaoke variable to ask whether "Dancing Queen"
    # is an element or not
    dancing_queen_in_array = karaoke.include?("Dancing Queen")  # => true
    assert_equal true, dancing_queen_in_array                   # => true
  end                                                           # => :test_5

  def test_b
    # skip
    band = ["Guitar", "Drums", "Bass"]                        # => ["Guitar", "Drums", "Bass"]
    # Call a method on the band variable to add the element "Vocals"
    # to the beginning of the array
    band.unshift("Vocals")                                    # => ["Vocals", "Guitar", "Drums", "Bass"]
    assert_equal ["Vocals", "Guitar", "Drums", "Bass"], band  # => true
  end                                                         # => :test_b

  def test_c
    # skip
    garden = ["Tulips", "Tomatoes", "Basil", "Peppers"]    # => ["Tulips", "Tomatoes", "Basil", "Peppers"]
    # Call a method to remove and return the first element from the garden array
    first_element = garden.shift                           # => "Tulips"
    assert_equal ["Tomatoes", "Basil", "Peppers"], garden  # => true
    assert_equal "Tulips", first_element                   # => true
  end                                                      # => :test_c

  def test_6
    # skip
    teams = ["Rockies", "Avalanche", "Nuggets", "Broncos", "Rapids"]  # => ["Rockies", "Avalanche", "Nuggets", "Broncos", "Rapids"]
    # Call a method on the teams variable to get the second, third, and fourth teams
    some_teams = teams[1..3]                                          # => ["Avalanche", "Nuggets", "Broncos"]
    assert_equal ["Avalanche", "Nuggets", "Broncos"], some_teams      # => true

    # Now use a different method on the teams variable to get the first and second teams
    some_teams = teams.take(2)                         # => ["Rockies", "Avalanche"]
    assert_equal ["Rockies", "Avalanche"], some_teams  # => true
  end                                                  # => :test_6

  def test_7
    # skip
    fourteeners = ["Pikes Peak", nil, "Mount Elbert", nil, "Mount Evans"]    # => ["Pikes Peak", nil, "Mount Elbert", nil, "Mount Evans"]
    # Call a method on the fourteeners variable to remove the nils
    fourteeners = fourteeners.compact                                        # => ["Pikes Peak", "Mount Elbert", "Mount Evans"]
    assert_equal ["Pikes Peak", "Mount Elbert", "Mount Evans"], fourteeners  # => true
  end                                                                        # => :test_7

  def test_8
    # skip
    pokemon = [["Squirtle", "Charmander", "Bulbasaur"], ["Pikachu"], "Staryu"]          # => [["Squirtle", "Charmander", "Bulbasaur"], ["Pikachu"], "Staryu"]
    # Call a method on the pokemon variable to remove the nesting
    pokemon = pokemon.flatten                                                           # => ["Squirtle", "Charmander", "Bulbasaur", "Pikachu", "Staryu"]
    assert_equal ["Squirtle", "Charmander", "Bulbasaur", "Pikachu", "Staryu"], pokemon  # => true
  end                                                                                   # => :test_8

  def test_9
    # skip
    scores = [23, 56, 34, 29, 48]                  # => [23, 56, 34, 29, 48]
    # Call a method on the scores variables that will
    # move the elements two spots to the left
    new_scores = scores.rotate(2)                  # => [34, 29, 48, 23, 56]
    assert_equal [34, 29, 48, 23, 56], new_scores  # => true

    # Now call a method on the scores variables that will
    # move the elements one spot to the right
    new_scores = scores.rotate(-1)                 # => [48, 23, 56, 34, 29]
    assert_equal [48, 23, 56, 34, 29], new_scores  # => true
  end                                              # => :test_9

  def test_10
    # skip
    vowels = ["a", "e", "y", "i", "o", "u", "y"]    # => ["a", "e", "y", "i", "o", "u", "y"]
    # Call a method on the vowels variable to remove "y"
    vowels.delete("y")                              # => "y"
    assert_equal ["a", "e", "i", "o", "u"], vowels  # => true
  end                                               # => :test_10

  def test_11
    # skip
    furniture = ["couch", "bed", "table"]                             # => ["couch", "bed", "table"]
    # Call a method on the furniture variable to add the element
    # "dresser" in between the elements "couch" and "bed"
    new_furniture = furniture.insert(1,"dresser")                     # => ["couch", "dresser", "bed", "table"]
    assert_equal ["couch", "dresser", "bed", "table"], new_furniture  # => true
  end                                                                 # => :test_11

  def test_12
    # skip
    children = ["Sarah", "Owen", "Peter"]  # => ["Sarah", "Owen", "Peter"]

    # Call a method on the children variable to combine them into
    # one string like this: "Sarah, Owen, Peter"
    one_string = children * ", "                   # => "Sarah, Owen, Peter"
    assert_equal "Sarah, Owen, Peter", one_string  # => true
  end                                              # => :test_12

  def test_13
    # skip
    ascending = [1,2,3,4,5]               # => [1, 2, 3, 4, 5]
    # Call a method on the ascending variable to create an array
    # with the elements in the opposite order
    descending = ascending.reverse        # => [5, 4, 3, 2, 1]
    assert_equal [5,4,3,2,1], descending  # => true
  end                                     # => :test_13

  def test_14
    # skip
    dice = [1,2,3,4,5,6]              # => [1, 2, 3, 4, 5, 6]
    # Call a method on the dice variable to get a random element out
    # of the array
    roll = dice.sample                # => 2
    assert roll <= 6                  # => true
    assert roll >= 1                  # => true
    # Note, this assertion assumes the Ruby Version is 2.4 or higher.
    # This test will fail with expecting roll to be a FixNum if the
    # Ruby version is 2.3 or earlier
    assert_instance_of Integer, roll  # => true
  end                                 # => :test_14

end  # => :test_14

# >> Run options: --seed 61111
# >>
# >> # Running:
# >>
# >> ...................
# >>
# >> Finished in 0.001552s, 12242.2667 runs/s, 18041.2351 assertions/s.
# >>
# >> 19 runs, 28 assertions, 0 failures, 0 errors, 0 skips
