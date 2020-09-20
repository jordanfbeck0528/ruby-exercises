

require 'minitest/autorun'  # => true
require 'minitest/pride'    # => true

class HashesTest < Minitest::Test  # => Minitest::Test

  def test_1
    # In the line below, create a new empty hash called empty
    empty = {}                # => {}
    assert_equal ({}), empty  # => true
  end                         # => :test_1

  def test_2
    # In the line below, create an empty hash with a default value 0
    empty = Hash.new(0)                # => {}
    assert_equal 0, empty[:not_found]  # => true
  end                                  # => :test_2

  def test_3
    # In the line below, create a hash called ages. The hash should
    # have a key of "ben" with a value of 4 and a key of "kelly" with
    # a value of 6
    ages = { "ben" => 4 , "kelly" => 6 }  # => {"ben"=>4, "kelly"=>6}
    assert_equal 2, ages.length           # => true
    assert_equal 4, ages["ben"]           # => true
    assert_equal 6, ages["kelly"]         # => true
  end                                     # => :test_3

  def test_4
    # In the line below, create a hash called ages. The hash should
    # have a key of :ben with a value of 4 and a key of :kelly with
    # a value of 6.
    ages = { :ben => 4 , :kelly => 6 }  # => {:ben=>4, :kelly=>6}
    assert_equal 2, ages.length         # => true
    assert_equal 4, ages[:ben]          # => true
    assert_equal 6, ages[:kelly]        # => true

    # There are two different syntaxes for doing this. Use the other way to
    # achieve the same result
    ages = { ben: 4 , kelly: 6 }  # => {:ben=>4, :kelly=>6}
    assert_equal 2, ages.length   # => true
    assert_equal 4, ages[:ben]    # => true
    assert_equal 6, ages[:kelly]  # => true
  end                             # => :test_4

  def test_5
    # In the line below, create a new hash with
    # default values of zero
    # create a "tomatoes" key and a :carrots key
    ingredients = { "tomatoes" => 0 , :carrots => 0 }  # => {"tomatoes"=>0, :carrots=>0}
    ingredients.default = 0                            # => 0
    assert_equal 0, ingredients["tomatoes"]            # => true
    assert_equal 0, ingredients[:carrots]              # => true
  end                                                  # => :test_5

  def test_6
    books = {
      "John Steinbeck" => "Grapes of Wrath",   # => "Grapes of Wrath"
      "Harper Lee" => "To Kill a Mockingbird"  # => "To Kill a Mockingbird"
    }                                          # => {"John Steinbeck"=>"Grapes of Wrath", "Harper Lee"=>"To Kill a Mockingbird"}
    # Using the books hash defined above,
    # access the value "Grapes of Wrath"  in the line below
    grapes = books["John Steinbeck"]           # => "Grapes of Wrath"
    assert_equal "Grapes of Wrath", grapes     # => true
  end                                          # => :test_6

  def test_7
    books = {
      "John Steinbeck" => "Grapes of Wrath",                # => "Grapes of Wrath"
      "Harper Lee" => "To Kill a Mockingbird"               # => "To Kill a Mockingbird"
    }                                                       # => {"John Steinbeck"=>"Grapes of Wrath", "Harper Lee"=>"To Kill a Mockingbird"}
    # Using the books hash defined above,
    # add a new key of "Ernest Hemmingway"
    # with a value of "For Whom the Bell Tolls"
    # in the line below
    books["Ernest Hemmingway"] = "For Whom the Bell Tolls"  # => "For Whom the Bell Tolls"
    expected = {
      "John Steinbeck" => "Grapes of Wrath",                # => "Grapes of Wrath"
      "Harper Lee" => "To Kill a Mockingbird",              # => "To Kill a Mockingbird"
      "Ernest Hemmingway" => "For Whom the Bell Tolls"      # => "For Whom the Bell Tolls"
    }                                                       # => {"John Steinbeck"=>"Grapes of Wrath", "Harper Lee"=>"To Kill a Mockingbird", "Ernest Hemmingway"=>"For Whom the Bell Tolls"}
    assert_equal expected, books                            # => true
  end                                                       # => :test_7

  def test_8
    books = {
      "John Steinbeck" => "Grapes of Wrath",     # => "Grapes of Wrath"
      "Harper Lee" => "To Kill a Mockingbird"    # => "To Kill a Mockingbird"
    }                                            # => {"John Steinbeck"=>"Grapes of Wrath", "Harper Lee"=>"To Kill a Mockingbird"}
    # Using the books hash defined above,
    # change the value associated with
    # "John Steinbeck" to "Of Mice and Men"
    books["John Steinbeck"] = "Of Mice and Men"  # => "Of Mice and Men"
    expected = {
      "John Steinbeck" => "Of Mice and Men",     # => "Of Mice and Men"
      "Harper Lee" => "To Kill a Mockingbird"    # => "To Kill a Mockingbird"
    }                                            # => {"John Steinbeck"=>"Of Mice and Men", "Harper Lee"=>"To Kill a Mockingbird"}
    assert_equal expected, books                 # => true
  end                                            # => :test_8

  def test_9
    books = {
      "John Steinbeck" => "Grapes of Wrath",   # => "Grapes of Wrath"
      "Harper Lee" => "To Kill a Mockingbird"  # => "To Kill a Mockingbird"
    }                                          # => {"John Steinbeck"=>"Grapes of Wrath", "Harper Lee"=>"To Kill a Mockingbird"}
    # Using the books hash defined above,
    # delete the key "Harper Lee"
    books.delete("Harper Lee")                 # => "To Kill a Mockingbird"
    expected = {
      "John Steinbeck" => "Grapes of Wrath"    # => "Grapes of Wrath"
    }                                          # => {"John Steinbeck"=>"Grapes of Wrath"}
    assert_equal expected, books               # => true
  end                                          # => :test_9

  def test_10
    books = {
      John_Steinbeck: "Grapes of Wrath",    # => "Grapes of Wrath"
      Harper_Lee: "To Kill a Mockingbird"   # => "To Kill a Mockingbird"
    }                                       # => {:John_Steinbeck=>"Grapes of Wrath", :Harper_Lee=>"To Kill a Mockingbird"}
    # Using the books hash defined above,
    # access the value "Grapes of Wrath"  in the line below
    grapes = books[:"John_Steinbeck"]       # => "Grapes of Wrath"
    assert_equal "Grapes of Wrath", grapes  # => true
  end                                       # => :test_10

  def test_11
    books = {
      John_Steinbeck: "Grapes of Wrath",                            # => "Grapes of Wrath"
      Harper_Lee: "To Kill a Mockingbird"                           # => "To Kill a Mockingbird"
    }                                                               # => {:John_Steinbeck=>"Grapes of Wrath", :Harper_Lee=>"To Kill a Mockingbird"}
    # Using the books hash defined above,
    # add a new key of :Ernest_Hemmingway
    # with a value of "For Whom the Bell Tolls"
    # in the line below
    books.merge!( "Ernest_Hemmingway": "For Whom the Bell Tolls" )  # => {:John_Steinbeck=>"Grapes of Wrath", :Harper_Lee=>"To Kill a Mockingbird", :Ernest_Hemmingway=>"For Whom the Bell Tolls"}
    expected = {
      John_Steinbeck: "Grapes of Wrath",                            # => "Grapes of Wrath"
      Harper_Lee: "To Kill a Mockingbird",                          # => "To Kill a Mockingbird"
      Ernest_Hemmingway: "For Whom the Bell Tolls"                  # => "For Whom the Bell Tolls"
    }                                                               # => {:John_Steinbeck=>"Grapes of Wrath", :Harper_Lee=>"To Kill a Mockingbird", :Ernest_Hemmingway=>"For Whom the Bell Tolls"}
    assert_equal expected, books                                    # => true
  end                                                               # => :test_11

  def test_12
    books = {
      John_Steinbeck: "Grapes of Wrath",        # => "Grapes of Wrath"
      Harper_Lee: "To Kill a Mockingbird"       # => "To Kill a Mockingbird"
    }                                           # => {:John_Steinbeck=>"Grapes of Wrath", :Harper_Lee=>"To Kill a Mockingbird"}
    # Using the books hash defined above,
    # change the value associated with
    # :John_Steinbeck to "Of Mice and Men"
    books[:John_Steinbeck] = "Of Mice and Men"  # => "Of Mice and Men"
    expected =  {
      John_Steinbeck: "Of Mice and Men",        # => "Of Mice and Men"
      Harper_Lee: "To Kill a Mockingbird"       # => "To Kill a Mockingbird"
    }                                           # => {:John_Steinbeck=>"Of Mice and Men", :Harper_Lee=>"To Kill a Mockingbird"}
    assert_equal expected, books                # => true
  end                                           # => :test_12

  def test_13
    books = {
      John_Steinbeck: "Grapes of Wrath",   # => "Grapes of Wrath"
      Harper_Lee: "To Kill a Mockingbird"  # => "To Kill a Mockingbird"
    }                                      # => {:John_Steinbeck=>"Grapes of Wrath", :Harper_Lee=>"To Kill a Mockingbird"}
    # Using the books hash defined above,
    # delete the key :Harper_Lee
    books.delete(:Harper_Lee)              # => "To Kill a Mockingbird"
    expected = {
      John_Steinbeck: "Grapes of Wrath"    # => "Grapes of Wrath"
    }                                      # => {:John_Steinbeck=>"Grapes of Wrath"}
    assert_equal expected, books           # => true
  end                                      # => :test_13

  def test_14
    ages = {
      "Jimmy" => 4,                # => 4
      "Julio" => 8,                # => 8
      "Juliet" => 9                # => 9
    }                              # => {"Jimmy"=>4, "Julio"=>8, "Juliet"=>9}
    # Using the ages hash defined above
    # increment Julio's age by one
    ages["Julio"] += 1             # => 9
    assert_equal 9, ages["Julio"]  # => true
  end                              # => :test_14

  def test_15
    ages = {
      Jimmy: 4,                   # => 4
      Julio: 8,                   # => 8
      Juliet: 9                   # => 9
    }                             # => {:Jimmy=>4, :Julio=>8, :Juliet=>9}
    # Using the ages hash defined above
    # increment Julio's age by one
    ages[:Julio] += 1             # => 9
    assert_equal 9, ages[:Julio]  # => true
  end                             # => :test_15

  def test_16
    ages = {
      Jimmy: 4,                                    # => 4
      Julio: 8,                                    # => 8
      Juliet: 9                                    # => 9
    }                                              # => {:Jimmy=>4, :Julio=>8, :Juliet=>9}
    # Using the ages hash defined above
    # get an array of all the names
    names = ages.keys                              # => [:Jimmy, :Julio, :Juliet]
    assert_equal [:Jimmy, :Julio, :Juliet], names  # => true
  end                                              # => :test_16

  def test_17
    ages = {
      Jimmy: 4,                       # => 4
      Julio: 8,                       # => 8
      Juliet: 9                       # => 9
    }                                 # => {:Jimmy=>4, :Julio=>8, :Juliet=>9}
    # Using the ages hash defined above
    # get an array of all the ages
    age_list = ages.values            # => [4, 8, 9]
    assert_equal [4, 8, 9], age_list  # => true
  end                                 # => :test_17

  def test_18
    ages = {
      Jimmy: 4,                # => 4
      Julio: 8,                # => 8
      Juliet: 9                # => 9
    }                          # => {:Jimmy=>4, :Julio=>8, :Juliet=>9}
    # Using the ages hash defined above
    # find the number of key/value pairs
    num_pairs = ages.count     # => 3
    assert_equal 3, num_pairs  # => true
  end                          # => :test_18

  def test_19
    ages = {
      Jimmy: 4,                            # => 4
      Julio: 8,                            # => 8
      Juliet: 9                            # => 9
    }                                      # => {:Jimmy=>4, :Julio=>8, :Juliet=>9}
    # Call a method on the ages hash defined above
    # to figure out if :Jimmy is a key
    jimmy_in_hash = ages.include?(:Jimmy)  # => true
    assert_equal true, jimmy_in_hash       # => true

    # Now figure out if :Jackie is in the hash

    jackie_in_hash = ages.include?(:Jackie)  # => false
    assert_equal false, jackie_in_hash       # => true
  end                                        # => :test_19

  def test_20
    ages = {
      Jimmy: 4,                      # => 4
      Julio: 8,                      # => 8
      Juliet: 9                      # => 9
    }                                # => {:Jimmy=>4, :Julio=>8, :Juliet=>9}
    # Call a method on the ages hash defined above
    # to make the keys the values and vice versa
    opposite = ages.invert           # => {4=>:Jimmy, 8=>:Julio, 9=>:Juliet}
    expected = {
      4 => :Jimmy,                   # => :Jimmy
      8 => :Julio,                   # => :Julio
      9 => :Juliet                   # => :Juliet
    }                                # => {4=>:Jimmy, 8=>:Julio, 9=>:Juliet}
    assert_equal expected, opposite  # => true
  end                                # => :test_20
end                                  # => :test_20

# >> Run options: --seed 54053
# >>
# >> # Running:
# >>
# >> ....................
# >>
# >> Finished in 0.001994s, 10030.0889 runs/s, 14543.6288 assertions/s.
# >>
# >> 20 runs, 29 assertions, 0 failures, 0 errors, 0 skips
